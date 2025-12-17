import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';
import 'package:birdbreeder/features/finances/widgets/add_finances_sheet.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class SpeciesDetailsSheet extends StatefulWidget {
  const SpeciesDetailsSheet({
    super.key,
    this.initialSpecies,
  });

  final Species? initialSpecies;

  @override
  State<SpeciesDetailsSheet> createState() => _SpeciesDetailsSheetState();
}

class _SpeciesDetailsSheetState extends State<SpeciesDetailsSheet> {
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
                        ? await cubit.updateSpecies(_species!)
                        : cubit.addSpecies(_species!);

                    if (!mounted) return;

                    Navigator.of(context).pop();
                  }
                }
              : null,
          title: isEdit ? context.tr.species.edit : context.tr.species.add,
          children: [
            FieldWithLabel(
              label: context.tr.species.name,
              child: TextFormField(
                initialValue: _species?.name,
                decoration: InputDecoration(
                  hintText: context.tr.species.name,
                ),
                onChanged: (value) {
                  setState(() {
                    _species =
                        (_species ?? Species.create()).copyWith(name: value);
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
              label: context.tr.species.latin_name,
              child: TextFormField(
                initialValue: _species?.latName,
                decoration: InputDecoration(
                  hintText: context.tr.species.latin_name,
                ),
                onChanged: (value) {
                  setState(() {
                    _species =
                        (_species ?? Species.create()).copyWith(latName: value);
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
