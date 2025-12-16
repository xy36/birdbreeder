import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';
import 'package:birdbreeder/features/finances/widgets/add_finances_sheet.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:flutter/services.dart';

@RoutePage()
class CageDetailsSheet extends StatefulWidget {
  const CageDetailsSheet({
    super.key,
    this.initialCage,
  });

  final Cage? initialCage;

  @override
  State<CageDetailsSheet> createState() => _CageDetailsSheetState();
}

class _CageDetailsSheetState extends State<CageDetailsSheet> {
  @override
  void initState() {
    _cage = widget.initialCage;
    super.initState();
  }

  Cage? _cage;

  final formKey = GlobalKey<FormState>();

  bool get isDirty => widget.initialCage != _cage;

  bool get isEdit => widget.initialCage != null;

  bool get isValid => formKey.currentState?.validate() == true && _cage != null;

  Widget get icon => Icon(isEdit ? AppIcons.save : AppIcons.accept);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdBreederCubit>();
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.all(
          context.responsiveValueMobileAndGreater<double>(
            mobile: 8,
            greater: 16,
          ),
        ),
        child: BaseSheet(
          onPrimaryButton: isValid
              ? () async {
                  if (isValid) {
                    isEdit
                        ? await cubit.updateCage(_cage!)
                        : cubit.addCage(_cage!);

                    if (!mounted) return;

                    Navigator.of(context).pop();
                  }
                }
              : null,
          title: isEdit ? context.tr.cages.edit : context.tr.cages.add,
          children: [
            FieldWithLabel(
              label: context.tr.cages.name,
              child: TextFormField(
                initialValue: _cage?.name,
                decoration: InputDecoration(
                  hintText: context.tr.cages.name,
                ),
                onChanged: (value) {
                  setState(() {
                    _cage = (_cage ?? Cage.create()).copyWith(name: value);
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
            const SizedBox(height: 12),
            FieldWithLabel(
              label: context.tr.cages.description,
              child: TextFormField(
                initialValue: _cage?.description,
                minLines: 3,
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: context.tr.cages.description,
                ),
                onChanged: (value) {
                  setState(() {
                    _cage =
                        (_cage ?? Cage.create()).copyWith(description: value);
                  });
                },
              ),
            ),
            const SizedBox(height: 12),
            FieldWithLabel(
              label: context.tr.cages.height,
              child: TextFormField(
                initialValue: _cage?.height?.toString(),
                decoration: InputDecoration(
                  hintText: context.tr.cages.height,
                  suffix: Text(context.tr.common.unit.m),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                ],
                onChanged: (value) {
                  setState(() {
                    _cage = (_cage ?? Cage.create())
                        .copyWith(height: int.tryParse(value));
                  });
                },
              ),
            ),
            const SizedBox(height: 12),
            FieldWithLabel(
              label: context.tr.cages.width,
              child: TextFormField(
                initialValue: _cage?.width?.toString(),
                decoration: InputDecoration(
                  hintText: context.tr.cages.width,
                  suffix: Text(context.tr.common.unit.m),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                ],
                onChanged: (value) {
                  setState(() {
                    _cage = (_cage ?? Cage.create())
                        .copyWith(width: int.tryParse(value));
                  });
                },
              ),
            ),
            const SizedBox(height: 12),
            FieldWithLabel(
              label: context.tr.cages.depth,
              child: TextFormField(
                initialValue: _cage?.depth?.toString(),
                decoration: InputDecoration(
                  hintText: context.tr.cages.depth,
                  suffix: Text(context.tr.common.unit.m),
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                ],
                onChanged: (value) {
                  setState(() {
                    _cage = (_cage ?? Cage.create())
                        .copyWith(depth: int.tryParse(value));
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
