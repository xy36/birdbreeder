import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';

class AddOrEditColorDialog extends StatefulWidget {
  const AddOrEditColorDialog({super.key, required this.onAdd, this.color});

  final void Function(BirdColor) onAdd;
  final BirdColor? color;

  @override
  State<AddOrEditColorDialog> createState() => _AddOrEditColorDialogState();
}

class _AddOrEditColorDialogState extends State<AddOrEditColorDialog> {
  @override
  void initState() {
    _color = widget.color ?? BirdColor.create();
    super.initState();
  }

  late BirdColor _color;

  final formKey = GlobalKey<FormState>();

  bool get isEdit => widget.color != _color;

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize.getScreenSize(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.colors__add_color),
        actions: [
          IconButton(
            onPressed: () {
              if (formKey.currentState?.validate() == true) {
                widget.onAdd(_color);

                Navigator.of(context).pop();
              }
            },
            icon: isEdit ? saveIcon : const SizedBox(),
          ),
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
                  initialValue: _color.name,
                  decoration: InputDecoration(
                    hintText: context.l10n.colors__color,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _color = _color.copyWith(name: value);
                    });
                  },
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return context.l10n.colors__name_is_required;
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
