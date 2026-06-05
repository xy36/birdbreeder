import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/species/widgets/species_image_picker_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/edit_section_divider.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/field_hint.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/field_label.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/save_bar.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/stepper2.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SpeciesDetailsSheet extends StatefulWidget {
  const SpeciesDetailsSheet({super.key, this.initialSpecies});

  final Species? initialSpecies;

  @override
  State<SpeciesDetailsSheet> createState() => _SpeciesDetailsSheetState();
}

class _SpeciesDetailsSheetState extends State<SpeciesDetailsSheet> {
  late Species _species;
  final _formKey = GlobalKey<FormState>();

  bool get isEdit => widget.initialSpecies != null;

  @override
  void initState() {
    super.initState();
    _species = widget.initialSpecies ??
        Species.create(
          incubationDays: 18,
          fledgeDays: 35,
        );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdBreederCubit>();
    final tr = context.tr;
    final speciesTr = tr.species;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  EditSectionDivider(
                    icon: AppIcons.species,
                    label: speciesTr.section.identity,
                    first: true,
                  ),
                  FieldLabel(label: tr.resources.field.name, required: true),
                  TextFormField(
                    initialValue: _species.name,
                    decoration:
                        InputDecoration(hintText: tr.resources.field.name),
                    onChanged: (v) => setState(
                      () => _species = _species.copyWith(name: v),
                    ),
                    validator: (v) => (v == null || v.trim().isEmpty)
                        ? tr.resources.field.required
                        : null,
                  ),
                  const SizedBox(height: 14),
                  FieldLabel(label: speciesTr.scientific_name),
                  TextFormField(
                    initialValue: _species.latName,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                    decoration: InputDecoration(
                      hintText: speciesTr.latin_hint_example,
                    ),
                    onChanged: (v) => setState(
                      () => _species = _species.copyWith(latName: v),
                    ),
                  ),
                  FieldHint(text: speciesTr.latin_hint),
                  EditSectionDivider(
                    icon: AppIcons.scheduleOutlined,
                    label: speciesTr.section.lifecycle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FieldLabel(
                              label: speciesTr.incubation,
                            ),
                            Stepper2(
                              value: _species.incubationDays ?? 0,
                              unit: speciesTr.days_short,
                              onChanged: (v) => setState(
                                () => _species =
                                    _species.copyWith(incubationDays: v),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FieldLabel(
                              label: speciesTr.fledge,
                            ),
                            Stepper2(
                              value: _species.fledgeDays ?? 0,
                              unit: speciesTr.days_short,
                              onChanged: (v) => setState(
                                () =>
                                    _species = _species.copyWith(fledgeDays: v),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  FieldHint(text: speciesTr.lifecycle_hint),
                  EditSectionDivider(
                    icon: AppIcons.imageOutlined,
                    label: speciesTr.image.section,
                  ),
                  _ImageSection(
                    imageUrl: _species.imageUrl,
                    name: _species.name ?? '',
                    latName: _species.latName,
                    onChanged: (url) => setState(
                      () => _species = _species.copyWith(imageUrl: url),
                    ),
                  ),
                  EditSectionDivider(
                    icon: AppIcons.notes,
                    label: tr.common.notes,
                  ),
                  TextFormField(
                    initialValue: _species.notes,
                    minLines: 3,
                    maxLines: 6,
                    decoration: InputDecoration(hintText: tr.common.notes),
                    onChanged: (v) => setState(
                      () => _species = _species.copyWith(notes: v),
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: SaveBar(
                  onCancel: () => Navigator.pop(context),
                  onSave: () async {
                    if (_formKey.currentState?.validate() != true) return;
                    if (isEdit) {
                      await cubit.updateSpecies(_species);
                    } else {
                      await cubit.addSpecies(_species);
                    }
                    if (!context.mounted) return;
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageSection extends StatelessWidget {
  const _ImageSection({
    required this.imageUrl,
    required this.name,
    required this.latName,
    required this.onChanged,
  });

  final String? imageUrl;
  final String name;
  final String? latName;
  final ValueChanged<String?> onChanged;

  Future<void> _pick(BuildContext context) async {
    final picked = await showSpeciesImagePicker(
      context,
      name: name,
      latName: latName,
    );
    if (picked != null) onChanged(picked);
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final speciesTr = context.tr.species;
    final nameEmpty = name.trim().isEmpty;
    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return Row(
        children: [
          ClipOval(
            child: CachedNetworkImage(
              imageUrl: imageUrl!,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
              placeholder: (_, __) => Container(
                width: 80,
                height: 80,
                color: cs.surfaceContainer,
              ),
              errorWidget: (_, __, ___) => Container(
                width: 80,
                height: 80,
                color: cs.surfaceContainer,
                child: Icon(
                  AppIcons.brokenImageOutlined,
                  color: cs.onSurfaceVariant,
                ),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton.icon(
                  onPressed: nameEmpty ? null : () => _pick(context),
                  icon: const Icon(AppIcons.search),
                  label: Text(speciesTr.image.search_another),
                ),
                const SizedBox(height: 8),
                TextButton.icon(
                  onPressed: () => onChanged(null),
                  icon: const Icon(AppIcons.close),
                  label: Text(speciesTr.image.remove),
                ),
              ],
            ),
          ),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilledButton.icon(
          onPressed: nameEmpty ? null : () => _pick(context),
          icon: const Icon(AppIcons.search),
          label: Text(speciesTr.image.search),
        ),
        if (nameEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              speciesTr.image.name_required_hint,
              style: TextStyle(fontSize: 11, color: cs.onSurfaceVariant),
            ),
          ),
      ],
    );
  }
}
