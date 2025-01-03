import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/presentation/cubit/colors_cubit.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/buttons/delete_color_button.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';

class AddOrEditColorDialog extends StatefulWidget {
  const AddOrEditColorDialog({
    super.key,
    this.initialColor,
    required this.colorsBloc,
  });

  final ColorsCubit colorsBloc;
  final BirdColor? initialColor;

  @override
  State<AddOrEditColorDialog> createState() => _AddOrEditColorDialogState();
}

class _AddOrEditColorDialogState extends State<AddOrEditColorDialog> {
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
    final size = ScreenSize.getScreenSize(context);
    return BlocProvider.value(
      value: widget.colorsBloc,
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(context.l10n.colors__add_color),
              leading: NavigateBackButton(discardDialogEnabled: isDirty),
              actions: [
                IconButton(
                  onPressed: () {
                    if (isValid) {
                      isEdit
                          ? widget.colorsBloc.edit(_color!)
                          : widget.colorsBloc.add(_color!);

                      Navigator.of(context).pop();
                    }
                  },
                  icon: isDirty ? icon : const SizedBox(),
                ),
                if (widget.initialColor != null)
                  DeleteColorButton(color: _color!),
              ],
            ),
            body: Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.hPaddingSmall,
                  vertical: size.vPaddingSmall,
                ),
                child: Column(
                  children: [
                    FieldWithLabel(
                      label: context.l10n.colors__color,
                      child: TextFormField(
                        initialValue: _color?.name,
                        decoration: InputDecoration(
                          hintText: context.l10n.colors__color,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _color = (_color ?? BirdColor.create())
                                .copyWith(name: value);
                          });
                        },
                        validator: (value) {
                          if (value.isNullOrEmpty) {
                            return context.l10n.common__required;
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
        },
      ),
    );
  }
}
