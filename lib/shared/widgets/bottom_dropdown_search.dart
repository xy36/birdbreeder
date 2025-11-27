import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:dropdown_search/dropdown_search.dart';

class BottomDropdownSearch<T> extends StatefulWidget {
  const BottomDropdownSearch({
    required this.items,
    required this.selectedItem,
    required this.title,
    required this.searchHintText,
    required this.showSearchBox,
    super.key,
    this.itemAsString,
    this.onChanged,
    this.onAdd,
    this.hint,
    this.filterFn,
    this.compareFn,
    this.dropdownBuilder,
    this.itemBuilder,
    this.onClear,
  });

  final List<T> items;
  final T? selectedItem;
  final String Function(T)? itemAsString;
  final void Function(T?)? onChanged;
  final void Function(String)? onAdd;
  final String title;
  final String searchHintText;
  final String? hint;
  final bool showSearchBox;
  final bool Function(T, String)? filterFn;
  final bool Function(T, T)? compareFn;
  final Widget Function(BuildContext, T?)? dropdownBuilder;
  final Widget Function(BuildContext, T, bool, bool)? itemBuilder;
  final void Function()? onClear;

  @override
  State<BottomDropdownSearch<T>> createState() =>
      _BottomDropdownSearchState<T>();
}

class _BottomDropdownSearchState<T> extends State<BottomDropdownSearch<T>> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>(
      items: (_, __) => widget.items,
      itemAsString: widget.itemAsString,
      dropdownBuilder: widget.dropdownBuilder,
      selectedItem: widget.selectedItem,
      compareFn: widget.compareFn,
      onChanged: widget.onChanged,
      filterFn: widget.filterFn,
      decoratorProps: DropDownDecoratorProps(
        decoration: InputDecoration(
          hintText: widget.hint,
          contentPadding: const EdgeInsets.all(8),
        ),
      ),
      suffixProps: DropdownSuffixProps(
        clearButtonProps: ClearButtonProps(
          icon: Icon(
            Icons.clear,
            color: Theme.of(context).colorScheme.primary,
          ).onTap(
            () => widget.onClear?.call(),
          ),
          isVisible: widget.onClear != null,
        ),
      ),
      popupProps: PopupProps.modalBottomSheet(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Text(widget.title, style: context.titleLarge),
        ),
        modalBottomSheetProps: ModalBottomSheetProps(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(12),
        ),
        // dialogProps: DialogProps(
        //   insetPadding: const EdgeInsets.all(8),
        //   contentPadding: const EdgeInsets.all(12),
        //   actionsAlignment: MainAxisAlignment.end,
        //   actionsPadding: const EdgeInsets.all(12),
        //   actions: [
        //     ElevatedButton(
        //       onPressed: () => Navigator.of(context).pop(),
        //       child: Text(context.tr.common__close),
        //     ),
        //   ],
        // ),
        listViewProps: const ListViewProps(
          physics: BouncingScrollPhysics(),
        ),
        itemBuilder: widget.itemBuilder ??
            (context, item, isSelected, _) => ListTile(
                  title: Text(
                    widget.itemAsString?.call(item) ?? item.toString(),
                    style: context.bodyLarge,
                  ),
                  selectedTileColor:
                      context.primaryColorLight.withValues(alpha: 0.25),
                  selected: widget.selectedItem == item,
                ),
        searchDelay: Duration.zero,
        showSearchBox: true,
        emptyBuilder: (context, searchEntry) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: Text(
                context.tr.common.bottom_sheet.search_empty_builder_text(
                  Text: searchEntry,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        searchFieldProps: TextFieldProps(
          controller: _searchController,
          decoration: InputDecoration(
            suffixIcon: widget.onAdd != null
                ? ValueListenableBuilder<TextEditingValue>(
                    valueListenable: _searchController,
                    builder: (context, value, _) {
                      final hasText = value.text.trim().isNotEmpty;
                      return hasText
                          ? Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4,
                                horizontal: 8,
                              ),
                              child: TextButton(
                                child: Text(context.tr.common.add),
                                onPressed: () {
                                  widget.onAdd?.call(value.text.trim());
                                  _searchController.clear();
                                },
                              ),
                            )
                          : const SizedBox.shrink();
                    },
                  )
                : null,
            hintText: widget.searchHintText,
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
