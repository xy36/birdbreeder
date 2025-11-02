import 'dart:ui';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/egg.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/birds_overview_screen.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_search_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/models/bird_filter.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/broods_tab/egg_tile.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_header.dart';
import 'package:birdbreeder/shared/widgets/value_selector.dart';
import 'package:flutter/services.dart';

Future<bool> showChildAsDrawerDialog(
  BuildContext context,
  Widget child,
) async {
  double getScreenWidth(BuildContext context) {
    final size = ScreenSize.getScreenSize(context);
    final widthFactor = switch (size) {
      ScreenSize.xs => 1,
      ScreenSize.sm => 1,
      ScreenSize.md => 0.6,
      ScreenSize.lg => 0.35,
    };
    return MediaQuery.of(context).size.width * widthFactor;
  }

  final success = await showGeneralDialog<bool>(
    context: context,
    transitionBuilder: (context, a1, a2, widget) {
      final curvedValue = Curves.easeInOut.transform(a1.value) - 1;
      final width = getScreenWidth(context);
      return Transform(
        transform: Matrix4.translationValues(
          curvedValue * -width,
          0,
          0,
        ),
        child: widget,
      );
    },
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) {
      return SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Dialog(
            insetPadding: EdgeInsets.zero,
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: getScreenWidth(context),
              child: child,
            ),
          ),
        ),
      );
    },
  );

  return success ?? false;
}

Future<T?> openSheet<T>(
  BuildContext context,
  Widget child,
) async {
  // Fokus vom vorherigen Textfeld lösen, damit nix zurückspringt
  FocusManager.instance.primaryFocus?.unfocus();
  final insets = MediaQuery.viewInsetsOf(context);

  return showModalBottomSheet<T>(
    context: context,
    useSafeArea: true,
    isScrollControlled: true,
    showDragHandle: true,
    backgroundColor: Theme.of(context).colorScheme.surface,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => AnimatedPadding(
      duration: const Duration(milliseconds: 120),
      padding: EdgeInsets.only(
        bottom: insets.bottom,
      ),
      child: child,
    ),
  );
}

Future<void> onOpenBrood(BuildContext context, Brood brood) async {
  await openSheet<Brood>(
    context,
    DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) =>
          BlocBuilder<BirdBreederCubit, BirdBreederState>(
        builder: (context, state) {
          final eggs = state.birdBreederResources.eggs
              .where((egg) => egg.broodId == brood.id)
              .sortedBy(
                (egg) => egg.laidAt,
              );

          return Column(
            children: [
              BottomSheetHeader(title: 'Eier im Gelege (${eggs.length})'),
              Expanded(
                child: eggs.isNotEmpty
                    ? ListView.builder(
                        itemCount: eggs.length,
                        itemBuilder: (context, index) {
                          final egg = eggs.elementAt(index);
                          return EggTile(
                            egg: egg,
                          );
                        },
                        controller: scrollController,
                      )
                    : const EmptyEgg(),
              ),
              SafeArea(
                top: false,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: FilledButton.icon(
                          icon: const Icon(Icons.check),
                          onPressed: () async {
                            final laidDate = await promptDateValue(
                              context,
                              title: context.tr.egg.pick_laid_date,
                            );

                            if (!context.mounted || laidDate == null) return;

                            await context.read<BirdBreederCubit>().addEgg(
                                  Egg.create(
                                    broodId: brood.id,
                                    number: context
                                            .read<BirdBreederCubit>()
                                            .state
                                            .birdBreederResources
                                            .eggs
                                            .length +
                                        1,
                                    laidAt: laidDate,
                                  ),
                                );
                          },
                          label: Text(context.tr.egg.add),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    ),
  );
}

Future<Bird?> onPickBird(BuildContext context, {BirdFilter? birdFilter}) async {
  final bird = await openSheet<Bird?>(
    context,
    DraggableScrollableSheet(
      initialChildSize: 1,
      expand: false,
      builder: (context, scrollController) {
        context.read<BirdSearchCubit>().reset();
        context.read<BirdsFilterCubit>().applyFilter(
              birdFilter ?? const BirdFilter(),
            );

        return BlocProvider.value(
          value: s1.get<BirdBreederCubit>(),
          child: BirdsOverviewScreen(
            mode: BirdOverviewMode.picker,
            scrollController: scrollController,
          ),
        );
      },
    ),
  );
  return bird;
}

Future<T?> promptValueSelector<T>(
  BuildContext context, {
  T? initialValue,
  required List<T> values,
  required String title,
  required Widget Function(BuildContext context, T item, int index) itemBuilder,
  required bool Function(T item, String filter)? filterFn,
  Future<T?> Function(String value)? onAdd,
}) async {
  FocusManager.instance.primaryFocus?.unfocus();

  return openSheet<T?>(
    context,
    ValueSelector<T>(
      initialValue: initialValue,
      values: values,
      title: title,
      itemBuilder: itemBuilder,
      filterFn: filterFn,
      onAdd: (String value) async {
        final createdValue = await onAdd?.call(value);

        if (!context.mounted) return;

        Navigator.pop(context, createdValue);
      },
    ),
  );
}

Future<DateTime?> promptDateValue(
  BuildContext context, {
  DateTime? initialDate,
  String? title,
}) async {
  FocusManager.instance.primaryFocus?.unfocus();
  final now = DateTime.now();
  final picked = await showDatePicker(
    helpText: title,
    context: context,
    initialDate: initialDate ?? now,
    firstDate: DateTime(now.year - 50),
    lastDate: DateTime(now.year + 10),
  );

  return picked;
}

Future<String?> promptTextValue(
  BuildContext context, {
  required String title,
  String? labelText,
  String? initialValue,
  String? hintText,
  IconData? icon,
  TextInputType keyboardType = TextInputType.text,
  List<TextInputFormatter>? inputFormatters,
  String? Function(String value)? validator,
}) async {
  FocusManager.instance.primaryFocus?.unfocus();
  final ctrl = TextEditingController(text: initialValue ?? '');
  String? error;

  return openSheet<String>(
    context,
    Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: StatefulBuilder(
        builder: (ctx, setState) {
          void trySubmit() {
            final v = ctrl.text.trim();
            final err = validator?.call(v);
            if (err != null) {
              setState(() => error = err);
              return;
            }
            Navigator.pop(ctx, v.isEmpty ? null : v);
          }

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(ctx),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              TextField(
                controller: ctrl,
                keyboardType: keyboardType,
                inputFormatters: inputFormatters,
                decoration: InputDecoration(
                  labelText: labelText,
                  hintText: hintText,
                  prefixIcon: icon != null ? Icon(icon) : null,
                  errorText: error,
                ),
                autofocus: true,
                onSubmitted: (_) => trySubmit(),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  OutlinedButton(
                    onPressed: () => Navigator.pop(ctx),
                    child: const Text('Abbrechen'),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton.icon(
                      icon: const Icon(Icons.check),
                      label: const Text('Speichern'),
                      onPressed: trySubmit,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    ),
  );
}

Widget moreMenu<T>(
  BuildContext context,
  T value,
  List<
          ({
            Icon icon,
            String label,
            void Function(BuildContext context, T value) action
          })>
      actions,
) {
  return IconButton(
    onPressed: () async {
      await showModalBottomSheet<void>(
        context: context,
        showDragHandle: true,
        builder: (_) => SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: actions
                .map(
                  (action) => ListTile(
                    leading: action.icon,
                    title: Text(action.label),
                    onTap: () {
                      Navigator.pop(context);
                      action.action(context, value);
                    },
                  ),
                )
                .toList(),
          ),
        ),
      );
    },
    icon: const Icon(AppIcons.more),
  );
}

class EmptyEgg extends StatelessWidget {
  const EmptyEgg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.egg_outlined, size: 40),
            const SizedBox(height: 12),
            Text('Noch kein Ei gelegt', style: t.titleMedium),
          ],
        ),
      ),
    );
  }
}
