import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category_kind.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/generic_picker_field.dart';

class FinancesCategoryPickerField extends StatelessWidget {
  const FinancesCategoryPickerField({
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
    this.validator,
  });

  final FinanceCategory? initialValue;
  final bool enabled;
  final void Function(FinanceCategory?)? onChanged;
  final String? Function(FinanceCategory?)? validator;

  @override
  Widget build(BuildContext context) {
    return GenericPickerField<FinanceCategory>(
      name: 'finances_category_selector',
      values: context
          .watch<BirdBreederCubit>()
          .state
          .birdBreederResources
          .financesCategories,
      displayStringFor: (category) => category.name,
      initialValue: initialValue,
      enabled: enabled,
      onChanged: onChanged,
      validator: validator,
      labelText: context.tr.finances.add.category,
      itemBuilder: (context, item, index) => ListTile(
        title: Text(item.name),
      ),
      filterFn: (item, filter) =>
          item.name.toLowerCase().contains(filter.toLowerCase()),
      title: context.tr.finances.add.category,
      selectedItemBuilder: (item) =>
          item != null ? Text(item.name) : const SizedBox(),
      onAdd: (String name) async {
        final newCategory =
            await context.read<BirdBreederCubit>().addFinancesCategory(
                  FinanceCategory.create(
                    name: name,
                    kind: FinanceCategoryKind.income,
                    //TODO: change default color
                    color: '#ff7D20AB',
                  ),
                );
        return newCategory;
      },
    );
  }
}
