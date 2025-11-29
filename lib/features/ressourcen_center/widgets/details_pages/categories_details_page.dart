import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';
import 'package:birdbreeder/shared/widgets/buttons/generic_button.dart';
import 'package:birdbreeder/shared/widgets/category_avatar.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

@RoutePage()
class CategoriesDetailsPage extends StatefulWidget {
  const CategoriesDetailsPage({
    super.key,
    this.initialCategory,
  });

  final FinanceCategory? initialCategory;

  @override
  State<CategoriesDetailsPage> createState() => _CategoriesDetailsPageState();
}

class _CategoriesDetailsPageState extends State<CategoriesDetailsPage> {
  @override
  void initState() {
    _category = widget.initialCategory ??
        FinanceCategory.create(
          name: '',
          color: Colors.blue.hex,
          kind: FinanceCategoryKind.income,
        );
    super.initState();
  }

  late FinanceCategory _category;

  final formKey = GlobalKey<FormState>();

  bool get isDirty => widget.initialCategory != _category;

  bool get isEdit => widget.initialCategory != null;

  bool get isValid => formKey.currentState?.validate() == true;

  Widget get icon => Icon(isEdit ? AppIcons.save : AppIcons.accept);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdBreederCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.finances.categories.add),
        leading: NavigateBackButton(discardDialogEnabled: isDirty),
        actions: [
          IconButton(
            onPressed: () {
              if (isValid) {
                isEdit
                    ? cubit.updateFinancesCategory(_category)
                    : cubit.addFinancesCategory(_category);

                Navigator.of(context).pop();
              }
            },
            icon: isDirty ? icon : const SizedBox(),
          ),
          if (widget.initialCategory != null)
            GenericButton.icon(
              actionButtonType: ActionButtonType.colorDelete,
              onTap: () {
                context
                    .read<BirdBreederCubit>()
                    .deleteFinancesCategory(_category);
                Navigator.of(context).pop();
              },
            ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(
            context.responsiveValueMobileAndGreater<double>(
              mobile: 8,
              greater: 16,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CategoryAvatar(
                  cat: _category,
                  size: 80,
                ),
                32.heightBox,
                FieldWithLabel(
                  label: context.tr.finances.categories.name,
                  child: TextFormField(
                    initialValue: _category.name,
                    decoration: InputDecoration(
                      hintText: context.tr.finances.categories.name,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _category = _category.copyWith(name: value);
                      });
                    },
                    validator: (value) {
                      if (value.isNullOrEmpty) {
                        return context.tr.common.required;
                      }
                      return null;
                    },
                  ),
                ),
                16.heightBox,
                FinancesCategoriesKindField(
                  kind: _category.kind,
                  onChanged: (kind) {
                    setState(() {
                      _category = _category.copyWith(kind: kind);
                    });
                  },
                ),
                16.heightBox,
                FieldWithLabel(
                  label: context.tr.finances.categories.color,
                  child: BlockPicker(
                    pickerColor: hexToColor(_category.color),
                    itemBuilder: (color, isCurrentColor, changeColor) => Stack(
                      children: [
                        Icon(
                          Icons.circle,
                          color: color,
                          size: 50,
                        ).onTap(
                          () => changeColor(),
                        ),
                        if (isCurrentColor)
                          const Padding(
                            padding: EdgeInsets.all(11),
                            child: Icon(
                              Icons.done,
                              size: 28,
                            ),
                          ),
                      ],
                    ),
                    layoutBuilder: (context, colors, child) => Wrap(
                      runSpacing: 8,
                      spacing: 8,
                      children: colors.map((c) => child(c)).toList(),
                    ),
                    onColorChanged: (color) {
                      setState(() {
                        _category = _category.copyWith(color: color.hex);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FinancesCategoriesKindField extends StatelessWidget {
  const FinancesCategoriesKindField({
    required this.kind,
    required this.onChanged,
    super.key,
  });

  final FinanceCategoryKind kind;

  final void Function(FinanceCategoryKind kind) onChanged;

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.tr.finances.kind.name,
      child: SizedBox(
        width: double.infinity,
        child: SegmentedButton(
          style: SegmentedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          showSelectedIcon: false,
          segments: <ButtonSegment<FinanceCategoryKind>>[
            ...FinanceCategoryKind.values.map((e) {
              final displayData = e.getDisplayData(context);
              return ButtonSegment<FinanceCategoryKind>(
                value: e,
                label: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 8,
                    children: [
                      Text(
                        displayData.label,
                        style: context.bodyLarge,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
          selected: <FinanceCategoryKind>{kind},
          onSelectionChanged: (x) => onChanged(x.first),
        ),
      ),
    );
  }
}
