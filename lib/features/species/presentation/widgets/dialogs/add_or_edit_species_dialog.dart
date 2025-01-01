import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/features/species/presentation/bloc/species_bloc.dart';
import 'package:birdbreeder/features/species/presentation/widgets/buttons/delete_species_button.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';

class AddOrEditSpeciesDialog extends StatefulWidget {
  const AddOrEditSpeciesDialog({
    super.key,
    this.initialSpecies,
    required this.speciesBloc,
  });

  final SpeciesBloc speciesBloc;
  final Species? initialSpecies;

  @override
  State<AddOrEditSpeciesDialog> createState() => _AddOrEditSpeciesDialogState();
}

class _AddOrEditSpeciesDialogState extends State<AddOrEditSpeciesDialog> {
  @override
  void initState() {
    _species = widget.initialSpecies;
    super.initState();
  }

  Species? _species;

  final formKey = GlobalKey<FormState>();

  bool get isDirty => widget.initialSpecies != _species;

  bool get isEdit => widget.initialSpecies != null;

  bool get isValid =>
      formKey.currentState?.validate() == true && _species != null;

  Widget get icon => isEdit ? saveIcon : acceptIcon;

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize.getScreenSize(context);
    return BlocProvider.value(
      value: widget.speciesBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.species__add_species),
          leading: NavigateBackButton(discardDialogEnabled: isDirty),
          actions: [
            IconButton(
              onPressed: () {
                if (isValid) {
                  isEdit
                      ? widget.speciesBloc.add(EditSpecies(_species!))
                      : widget.speciesBloc.add(AddSpecies(_species!));

                  Navigator.of(context).pop();
                }
              },
              icon: isDirty ? icon : const SizedBox(),
            ),
            if (widget.initialSpecies != null)
              DeleteSpeciesButton(species: _species!),
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
                      setState(() {
                        _species = (_species ?? Species.create())
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
      ),
    );
  }
}
