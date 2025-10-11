import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_header.dart';

class ValueSelector<T> extends StatefulWidget {
  const ValueSelector({
    super.key,
    this.initialValue,
    required this.values,
    required this.title,
    required this.itemBuilder,
    this.filterFn,
    this.onAdd,
  });

  final T? initialValue;
  final List<T> values;
  final String title;
  final Widget? Function(BuildContext context, T item, int index) itemBuilder;
  final bool Function(T item, String filter)? filterFn;
  final Future<void> Function(String value)? onAdd;

  @override
  State<ValueSelector<T>> createState() => _ValueSelectorState<T>();
}

class _ValueSelectorState<T> extends State<ValueSelector<T>> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    searchController.addListener(() {
      setState(() {});
    });
  }

  String get searchTerm => searchController.text;

  List<T> get filteredValues => widget.values
      .where((item) => widget.filterFn?.call(item, searchTerm) ?? true)
      .toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BottomSheetHeader(title: widget.title),
        if (widget.filterFn != null)
          Padding(
            padding: const EdgeInsets.all(8),
            child: SearchBar(
              controller: searchController,
              hintText: context.tr.common.search_hint,
              trailing: [
                if (searchTerm.isNotEmpty) ...[
                  IconButton(
                    icon: const Icon(AppIcons.clear),
                    onPressed: searchController.clear,
                  ),
                  FilledButton(
                    onPressed: () async {
                      await widget.onAdd?.call(searchTerm);
                    },
                    child: Text(
                      context.tr.common.add,
                    ),
                  ),
                ],
              ],
              onChanged: (value) {
                searchController.text = value;
              },
            ),
          ),
        Expanded(
          child: ListView.builder(
            itemCount: filteredValues.length,
            itemBuilder: (context, index) => widget
                .itemBuilder(context, filteredValues[index], index)
                ?.onTap(
                  () => context.router.maybePop(filteredValues[index]),
                ),
          ),
        ),
      ],
    );
  }
}
