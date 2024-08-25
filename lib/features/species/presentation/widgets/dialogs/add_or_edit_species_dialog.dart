import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';

class AddOrEditSpeciesDialog extends StatefulWidget {
  const AddOrEditSpeciesDialog({super.key, required this.onAdd, this.species});

  final void Function(Species) onAdd;
  final Species? species;

  @override
  State<AddOrEditSpeciesDialog> createState() => _AddOrEditSpeciesDialogState();
}

class _AddOrEditSpeciesDialogState extends State<AddOrEditSpeciesDialog> {
  @override
  void initState() {
    _species = widget.species;
    super.initState();
  }

  Species? _species;

  final formKey = GlobalKey<FormState>();

  bool get isDirty => widget.species != _species;

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize.getScreenSize(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.species__add_species),
        leading: NavigateBackButton(discardDialogEnabled: isDirty),
        actions: [
          IconButton(
            onPressed: () {
              if (formKey.currentState?.validate() == true &&
                  _species != null) {
                widget.onAdd(_species!);

                Navigator.of(context).pop();
              }
            },
            icon: isDirty ? saveIcon : const SizedBox(),
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
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FieldWithLabel(
                label: context.l10n.species__name,
                child: TextFormField(
                  initialValue: _species?.name,
                  decoration: InputDecoration(
                    hintText: context.l10n.species__name,
                  ),
                  onChanged: (value) {
                    _species =
                        (_species ?? Species.create()).copyWith(name: value);
                  },
                  validator: (value) {
                    if (value.isNullOrEmpty) {
                      return context.l10n.species__name_is_required;
                    }
                    return null;
                  },
                ),
              ),
              FieldWithLabel(
                label: context.l10n.species__latin_name,
                child: TextFormField(
                  initialValue: _species?.latName,
                  decoration: InputDecoration(
                    hintText: context.l10n.species__latin_name,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _species = (_species ?? Species.create())
                          .copyWith(latName: value);
                    });
                  },
                ),
              ),
            ].genericJoin(const SizedBox(height: 16)),
          ),
        ),
      ),
    );
  }
}
