import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';
import 'package:birdbreeder/shared/widgets/buttons/generic_button.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';

@RoutePage()
class ColorDetailsPage extends StatefulWidget {
  const ColorDetailsPage({
    super.key,
    this.initialColor,
  });

  final BirdColor? initialColor;

  @override
  State<ColorDetailsPage> createState() => _ColorDetailsPageState();
}

class _ColorDetailsPageState extends State<ColorDetailsPage> {
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

  Widget get icon => isEdit ? saveIcon : acceptIcon;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdBreederCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.colors.add),
        leading: NavigateBackButton(discardDialogEnabled: isDirty),
        actions: [
          IconButton(
            onPressed: () {
              if (isValid) {
                isEdit ? cubit.updateColor(_color!) : cubit.addColor(_color!);

                Navigator.of(context).pop();
              }
            },
            icon: isDirty ? icon : const SizedBox(),
          ),
          if (widget.initialColor != null)
            GenericButton.icon(
              actionButtonType: ActionButtonType.colorDelete,
              onTap: () {
                context.read<BirdBreederCubit>().deleteColor(_color!);
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
          child: Column(
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
      ),
    );
  }
}
