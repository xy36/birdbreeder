import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';
import 'package:birdbreeder/features/finances/widgets/add_finances_sheet.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

@RoutePage()
class ColorDetailsSheet extends StatefulWidget {
  const ColorDetailsSheet({
    super.key,
    this.initialColor,
  });

  final BirdColor? initialColor;

  @override
  State<ColorDetailsSheet> createState() => _ColorDetailsSheetState();
}

class _ColorDetailsSheetState extends State<ColorDetailsSheet> {
  @override
  void initState() {
    _color = widget.initialColor;
    super.initState();
  }

  BirdColor? _color;

  final formKey = GlobalKey<FormState>();

  bool get isDirty => widget.initialColor != _color;

  bool get isEdit => widget.initialColor != null;

  bool get isValid =>
      formKey.currentState?.validate() == true && _color != null;

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
                        ? await cubit.updateColor(_color!)
                        : cubit.addColor(_color!);

                    if (!mounted) return;

                    Navigator.of(context).pop();
                  }
                }
              : null,
          title: isEdit ? context.tr.colors.edit : context.tr.colors.add,
          children: [
            FieldWithLabel(
              label: context.tr.colors.color,
              child: TextFormField(
                initialValue: _color?.name,
                decoration: InputDecoration(
                  hintText: context.tr.colors.color,
                ),
                onChanged: (value) {
                  setState(() {
                    _color =
                        (_color ?? BirdColor.create()).copyWith(name: value);
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
          ],
        ),
      ),
    );
  }
}
