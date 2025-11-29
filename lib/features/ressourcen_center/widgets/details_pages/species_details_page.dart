import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';
import 'package:birdbreeder/shared/widgets/buttons/generic_button.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';

@RoutePage()
class SpeciesDetailsPage extends StatefulWidget {
  const SpeciesDetailsPage({
    super.key,
    this.initialSpecies,
  });

  final Species? initialSpecies;

  @override
  State<SpeciesDetailsPage> createState() => _SpeciesDetailsPageState();
}

class _SpeciesDetailsPageState extends State<SpeciesDetailsPage> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr.species.add),
        leading: NavigateBackButton(discardDialogEnabled: isDirty),
        actions: [
          IconButton(
            onPressed: () {
              if (isValid) {
                isEdit
                    ? cubit.updateSpecies(_species!)
                    : cubit.addSpecies(_species!);

                Navigator.of(context).pop();
              }
            },
            icon: isDirty ? icon : const SizedBox(),
          ),
          if (widget.initialSpecies != null)
            GenericButton.icon(
              actionButtonType: ActionButtonType.speciesDelete,
              onTap: () {
                context.read<BirdBreederCubit>().deleteSpecies(_species!);
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
            spacing: 16,
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
              FieldWithLabel(
                label: context.tr.species.latin_name,
                child: TextFormField(
                  initialValue: _species?.latName,
                  decoration: InputDecoration(
                    hintText: context.tr.species.latin_name,
                  ),
                  onChanged: (value) {
                    setState(() {
                      _species = (_species ?? Species.create())
                          .copyWith(latName: value);
                    });
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
