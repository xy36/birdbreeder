import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_property_field.dart';
import 'package:birdbreeder/shared/widgets/bottom_dropdown_search.dart';

class BirdDropdownPropertyField<T> extends StatelessWidget {
  const BirdDropdownPropertyField({
    super.key,
    required this.bird,
    required this.label,
    required this.name,
    this.hint,
    required this.select,
    required this.apply,
    required this.title,
    required this.filterFn,
    required this.items,
    required this.itemAsString,
    this.selectedItem,
    this.onAdd,
    this.onClear,
    this.searchHint,
    this.itemBuilder,
  });

  final Bird bird;
  final String label;
  final String title;
  final String name;
  final String? hint;
  final String? searchHint;
  final bool Function(T, String) filterFn;

  final T? Function(Bird) select;
  final Bird Function(Bird, T?) apply;
  final List<T> items;
  final String Function(T) itemAsString;
  final T? selectedItem;
  final void Function(String)? onAdd;
  final void Function()? onClear;
  final Widget Function(BuildContext, T, bool)? itemBuilder;

  @override
  Widget build(BuildContext context) {
    return BirdPropertyField<T>(
      bird: bird,
      label: label,
      name: name,
      hint: hint,
      select: select,
      apply: apply,
      builder: (ctx, initialValue, onChanged) {
        return BottomDropdownSearch<T>(
          items: items,
          selectedItem: selectedItem,
          onChanged: onChanged,
          itemAsString: itemAsString,
          title: title,
          searchHintText: searchHint ?? '',
          showSearchBox: true,
          filterFn: filterFn,
          onClear: onClear,
          onAdd: onAdd,
          hint: hint ?? label,
          itemBuilder: itemBuilder,
        );
      },
    );
  }
}
