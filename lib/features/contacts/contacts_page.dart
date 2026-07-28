import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/widget_extensions.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/contacts/contacts_grouping.dart';
import 'package:birdbreeder/features/contacts/widgets/alphabet_scroll_rail.dart';
import 'package:birdbreeder/features/contacts/widgets/contact_section_header.dart';
import 'package:birdbreeder/features/contacts/widgets/contact_v3_card.dart';
import 'package:birdbreeder/features/contacts/widgets/contacts_summary.dart';
import 'package:birdbreeder/features/contacts/widgets/empy_contact_list.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/bottom_search_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

/// Top inset of the contacts list; the pinned header rests at this offset.
const double _kListTopPadding = 6;

@RoutePage()
class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final _itemScrollController = ItemScrollController();
  final _positionsListener = ItemPositionsListener.create();

  /// Active group letter and pinned-header push offset are held in notifiers so
  /// scroll updates rebuild only the tiny pinned header and rail — never the
  /// list, search or grouping (which would jank on every frame).
  final _activeLetter = ValueNotifier<String?>(null);
  final _stickyOffset = ValueNotifier<double>(0);

  /// Group letter of each flat list index, for deriving the active letter.
  List<String> _letterOfIndex = const [];

  /// Flat indices that hold a section header.
  Set<int> _headerIndices = const {};

  /// Letter to its header's flat index.
  Map<String, int> _letterIndexMap = const {};

  /// Height of the scrollable viewport, needed to convert edge fractions to px.
  double _viewportHeight = 0;

  @override
  void initState() {
    super.initState();
    _positionsListener.itemPositions.addListener(_onPositionsChanged);
    // The search cubit lives above the router, so a stale query survives
    // navigation while the (stateful) search field is recreated empty. Reset
    // it on entry so the filtered list matches the empty input.
    context.read<ContactSearchCubit>().reset();
  }

  @override
  void dispose() {
    _positionsListener.itemPositions.removeListener(_onPositionsChanged);
    _activeLetter.dispose();
    _stickyOffset.dispose();
    super.dispose();
  }

  void _onPositionsChanged() {
    final positions = _positionsListener.itemPositions.value;
    if (positions.isEmpty || _letterOfIndex.isEmpty) return;

    // Topmost item still visible below the list's top edge.
    ItemPosition? top;
    for (final p in positions) {
      if (p.itemTrailingEdge <= 0) continue;
      if (top == null || p.index < top.index) top = p;
    }
    if (top == null) return;

    final topIndex = top.index.clamp(0, _letterOfIndex.length - 1);
    final letter = _letterOfIndex[topIndex];
    final activeHeaderIndex = _letterIndexMap[letter];

    // The next group's header pushes the pinned header up as it approaches.
    var offset = 0.0;
    if (activeHeaderIndex != null && _viewportHeight > 0) {
      ItemPosition? next;
      for (final p in positions) {
        if (!_headerIndices.contains(p.index)) continue;
        if (p.index <= activeHeaderIndex || p.itemLeadingEdge <= 0) continue;
        if (next == null || p.index < next.index) next = p;
      }
      if (next != null) {
        final topPx = next.itemLeadingEdge * _viewportHeight;
        const threshold = _kListTopPadding + kContactSectionHeaderHeight;
        if (topPx < threshold) offset = threshold - topPx;
      }
    }

    if (_activeLetter.value != letter) _activeLetter.value = letter;
    if ((_stickyOffset.value - offset).abs() > 0.5) {
      _stickyOffset.value = offset;
    }
  }

  List<String> _buildLetterOfIndex(List<ContactListItem> items) {
    final result = <String>[];
    var current = '';
    for (final item in items) {
      if (item is ContactHeaderItem) current = item.letter;
      result.add(current);
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final contactsCount = context
        .watch<BirdBreederCubit>()
        .state
        .birdBreederResources
        .contacts
        .length;

    return Scaffold(
      appBar: SharedAppBarWithDrawer(
        title: context.tr.contacts.title(Count: contactsCount),
      ),
      body: BirdBreederWrapper(
        child: BlocBuilder<BirdBreederCubit, BirdBreederState>(
          builder: (context, state) {
            final contacts = state.birdBreederResources.contacts;
            if (contacts.isEmpty) {
              return const EmpyContactList();
            }

            context.read<ContactSearchCubit>().setItems(contacts);

            final birds = state.birdBreederResources.birds;
            final boughtCount =
                birds.where((bird) => bird.boughtFromId != null).length;
            final soldCount =
                birds.where((bird) => bird.soldToId != null).length;

            return BlocBuilder<ContactSearchCubit, Query>(
              builder: (context, _) {
                final searchedContacts =
                    context.read<ContactSearchCubit>().searchedItems;
                final grouped = groupContactsByLetter(searchedContacts);
                _letterOfIndex = _buildLetterOfIndex(grouped.items);
                _letterIndexMap = grouped.letterIndex;
                _headerIndices = grouped.letterIndex.values.toSet();

                return Column(
                  children: [
                    ContactsSummary(
                      total: searchedContacts.length,
                      boughtCount: boughtCount,
                      soldCount: soldCount,
                    ),
                    Expanded(
                      child: _GroupedList(
                        grouped: grouped,
                        activeLetter: _activeLetter,
                        stickyOffset: _stickyOffset,
                        itemScrollController: _itemScrollController,
                        positionsListener: _positionsListener,
                        onViewport: (height) => _viewportHeight = height,
                        onRefresh: () async {
                          await context
                              .read<BirdBreederCubit>()
                              .fetchContacts();
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: BottomSearchBar(
        onSearch: (query) {
          context.read<ContactSearchCubit>().setSearch(query);
        },
        onAdd: () async {
          await context.router.push(ContactDetailsRoute());
        },
      ),
    );
  }
}

class _GroupedList extends StatelessWidget {
  const _GroupedList({
    required this.grouped,
    required this.activeLetter,
    required this.stickyOffset,
    required this.itemScrollController,
    required this.positionsListener,
    required this.onViewport,
    required this.onRefresh,
  });

  final GroupedContacts grouped;
  final ValueListenable<String?> activeLetter;
  final ValueListenable<double> stickyOffset;
  final ItemScrollController itemScrollController;
  final ItemPositionsListener positionsListener;
  final ValueChanged<double> onViewport;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        onViewport(constraints.maxHeight);
        // ClipRect keeps the pushed-up pinned header from painting over the
        // summary above: Stack only auto-clips on layout overflow, not on a
        // Transform paint offset.
        return ClipRect(
          child: Stack(
            children: [
              ScrollablePositionedList.builder(
                itemScrollController: itemScrollController,
                itemPositionsListener: positionsListener,
                physics: const AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                padding:
                    const EdgeInsets.fromLTRB(10, _kListTopPadding, 22, 100),
                itemCount: grouped.items.length,
                itemBuilder: (context, i) {
                  final item = grouped.items[i];
                  return switch (item) {
                    ContactHeaderItem(:final letter, :final count) =>
                      ContactSectionHeader(letter: letter, count: count),
                    ContactEntryItem(:final contact) => ContactV3Card(
                        contact: contact,
                        onTap: () async {
                          await context.router.push(
                            ContactViewRoute(contact: contact),
                          );
                        },
                      ),
                  };
                },
              ).withRefresher(onRefresh: onRefresh),
              _PinnedHeader(
                grouped: grouped,
                letter: activeLetter,
                offset: stickyOffset,
              ),
              Positioned(
                top: _kListTopPadding,
                bottom: 10,
                right: 2,
                child: ValueListenableBuilder<String?>(
                  valueListenable: activeLetter,
                  builder: (context, letter, _) => AlphabetScrollRail(
                    letters: grouped.letters.toSet(),
                    activeLetter: letter,
                    onSelect: (target) {
                      final index = grouped.letterIndex[target];
                      if (index != null && itemScrollController.isAttached) {
                        itemScrollController.scrollTo(
                          index: index,
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// The pinned section header that sticks to the top and is pushed up by the
/// next incoming header.
///
/// Sits in a fixed [Positioned] slot; only a cheap [Transform.translate]
/// rebuilds per frame as [offset] changes, so scrolling stays smooth.
class _PinnedHeader extends StatelessWidget {
  const _PinnedHeader({
    required this.grouped,
    required this.letter,
    required this.offset,
  });

  final GroupedContacts grouped;
  final ValueListenable<String?> letter;
  final ValueListenable<double> offset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _kListTopPadding,
      left: 10,
      right: 22,
      child: IgnorePointer(
        child: ValueListenableBuilder<String?>(
          valueListenable: letter,
          builder: (context, active, _) {
            final index = active == null ? null : grouped.letterIndex[active];
            if (index == null) return const SizedBox.shrink();
            final header = grouped.items[index];
            if (header is! ContactHeaderItem) return const SizedBox.shrink();

            final child = ContactSectionHeader(
              letter: header.letter,
              count: header.count,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            );

            return ValueListenableBuilder<double>(
              valueListenable: offset,
              child: child,
              builder: (context, value, child) => Transform.translate(
                offset: Offset(0, -value),
                child: child,
              ),
            );
          },
        ),
      ),
    );
  }
}
