import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:dropdown_search/dropdown_search.dart';

class MyDropdownSearch<T> extends StatelessWidget {
  const MyDropdownSearch({
    super.key,
    required this.items,
    required this.selectedItem,
    this.itemAsString,
    this.onChanged,
    required this.title,
    required this.searchHintText,
    required this.showSearchBox,
    this.filterFn,
    this.dropdownBuilder,
    this.itemBuilder,
    this.onClear,
  });

  final List<T> items;
  final T? selectedItem;
  final String Function(T)? itemAsString;
  final void Function(T?)? onChanged;
  final String title;
  final String searchHintText;
  final bool showSearchBox;
  final bool Function(T, String)? filterFn;
  final Widget Function(BuildContext, T?)? dropdownBuilder;
  final Widget Function(BuildContext, T, bool)? itemBuilder;
  final void Function()? onClear;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<T>(
      items: items,
      itemAsString: itemAsString,
      dropdownBuilder: dropdownBuilder,
      selectedItem: selectedItem,
      onChanged: onChanged,
      filterFn: filterFn,
      dropdownDecoratorProps: const DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          contentPadding: EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
      popupProps: PopupProps.bottomSheet(
        listViewProps: const ListViewProps(
          physics: BouncingScrollPhysics(),
        ),
        itemBuilder: itemBuilder,
        title: Container(
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: onClear,
                    icon: Icon(
                      Icons.delete,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      context.router.pop();
                    },
                    icon: Icon(
                      Icons.close,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        searchDelay: Duration.zero,
        showSearchBox: showSearchBox,
        searchFieldProps: TextFieldProps(
          decoration: InputDecoration(
            hintText: searchHintText,
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
