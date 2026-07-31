import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/edit_section_divider.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/field_hint.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/field_label.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/save_bar.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/stepper2.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/models/ressources/species_suggestion.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/species_lookup_service.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/image_lightbox.dart';
import 'package:birdbreeder/theme/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SpeciesDetailsSheet extends StatefulWidget {
  const SpeciesDetailsSheet({super.key, this.initialSpecies});

  final Species? initialSpecies;

  @override
  State<SpeciesDetailsSheet> createState() => _SpeciesDetailsSheetState();
}

class _SpeciesDetailsSheetState extends State<SpeciesDetailsSheet> {
  static const _suggestionDelay = Duration(milliseconds: 350);

  late Species _species;
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController;
  late final TextEditingController _latNameController;

  Timer? _suggestionDebounce;
  List<SpeciesSuggestion> _suggestions = const [];

  /// The last suggestion the breeder picked; typing it again must not reopen
  /// the list they just chose from.
  String? _appliedSuggestion;

  /// Outcome of the incubation lookup for the picked suggestion: null while
  /// none has run, true once Wikidata came back empty.
  bool? _incubationMissing;

  bool _incubationLoading = false;

  bool get isEdit => widget.initialSpecies != null;

  @override
  void initState() {
    super.initState();
    // No preset durations: an invented number would be indistinguishable
    // from a researched one once saved.
    _species = widget.initialSpecies ?? Species.create();
    _nameController = TextEditingController(text: _species.name);
    _latNameController = TextEditingController(text: _species.latName);
  }

  @override
  void dispose() {
    _suggestionDebounce?.cancel();
    _nameController.dispose();
    _latNameController.dispose();
    super.dispose();
  }

  void _onNameChanged(String value) {
    setState(() => _species = _species.copyWith(name: value));
    _suggestionDebounce?.cancel();

    final query = value.trim();
    if (query.length < 3 || query == _appliedSuggestion) {
      setState(() => _suggestions = const []);
      return;
    }
    // Read before the async gap: the timer fires outside this build.
    final languageCode = Localizations.localeOf(context).languageCode;
    _suggestionDebounce = Timer(_suggestionDelay, () async {
      final results = await s1<SpeciesLookupService>()
          .suggest(query, languageCode: languageCode);
      // Drop stale responses: only the reply to what is typed now counts.
      if (!mounted || _nameController.text.trim() != query) return;
      setState(() => _suggestions = results);
    });
  }

  /// Replaces every species-derived field with the picked suggestion.
  ///
  /// Switching to another species must not leave the previous one's photo or
  /// incubation period behind, so both are reset here rather than merged.
  Future<void> _applySuggestion(SpeciesSuggestion suggestion) async {
    setState(() {
      _appliedSuggestion = suggestion.commonName;
      _nameController.text = suggestion.commonName;
      _latNameController.text = suggestion.scientificName;
      _species = _species.copyWith(
        name: suggestion.commonName,
        latName: suggestion.scientificName,
        endangered: suggestion.endangered,
        imageUrl: suggestion.imageUrl,
        incubationDays: null,
      );
      _suggestions = const [];
      _incubationMissing = null;
      _incubationLoading = true;
    });

    final days = await s1<SpeciesLookupService>()
        .incubationDays(suggestion.scientificName);
    // A newer pick (or a hand-typed name) must win over this late answer.
    if (!mounted || _species.latName != suggestion.scientificName) return;
    setState(() {
      _incubationLoading = false;
      _incubationMissing = days == null;
      if (days != null) _species = _species.copyWith(incubationDays: days);
    });
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
                  Row(
                    children: [
                      _ImageSection(
                        imageUrl: _species.imageUrl,
                        name: _species.name ?? '',
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          children: [
                            FieldLabel(
                              label: tr.resources.field.name,
                              required: true,
                            ),
                            TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                hintText: tr.resources.field.name,
                              ),
                              onChanged: _onNameChanged,
                              validator: (v) => (v == null || v.trim().isEmpty)
                                  ? tr.resources.field.required
                                  : null,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (_suggestions.isNotEmpty)
                    _SuggestionList(
                      suggestions: _suggestions,
                      onSelect: _applySuggestion,
                    ),
                  const SizedBox(height: 14),
                  FieldLabel(label: speciesTr.scientific_name),
                  TextFormField(
                    controller: _latNameController,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                    decoration: InputDecoration(
                      hintText: speciesTr.latin_hint_example,
                    ),
                    onChanged: (v) => setState(
                      () => _species = _species.copyWith(latName: v),
                    ),
                  ),
                  FieldHint(text: speciesTr.latin_hint),
                  const SizedBox(height: 6),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    value: _species.endangered,
                    title: Text(speciesTr.endangered),
                    subtitle: Text(speciesTr.endangered_hint),
                    onChanged: (v) => setState(
                      () => _species = _species.copyWith(endangered: v),
                    ),
                  ),
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
                              value: _species.incubationDays,
                              startValue: 18,
                              unit: speciesTr.days_short,
                              onChanged: (v) => setState(() {
                                _incubationMissing = null;
                                _species = _species.copyWith(incubationDays: v);
                              }),
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
                              value: _species.fledgeDays,
                              startValue: 35,
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
                  if (_incubationLoading)
                    _LookupNote(
                      icon: AppIcons.scheduleOutlined,
                      text: speciesTr.incubation_found,
                      busy: true,
                    )
                  else if (_incubationMissing ?? false)
                    _LookupNote(
                      icon: AppIcons.infoOutline,
                      text: speciesTr.incubation_missing,
                    ),
                  FieldHint(text: speciesTr.lifecycle_hint),
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

/// One-line note about the incubation lookup that ran for a picked species.
class _LookupNote extends StatelessWidget {
  const _LookupNote({
    required this.icon,
    required this.text,
    this.busy = false,
  });

  final IconData icon;
  final String text;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          SizedBox(
            width: 14,
            height: 14,
            child: busy
                ? CircularProgressIndicator(
                    strokeWidth: 2,
                    color: cs.onSurfaceVariant,
                  )
                : Icon(icon, size: 14, color: cs.onSurfaceVariant),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 11, color: cs.onSurfaceVariant),
            ),
          ),
        ],
      ),
    );
  }
}

/// Tappable species suggestions shown while typing the name.
///
/// Selecting one fills name, scientific name and the endangered flag; the
/// photo is only taken over when no image has been chosen yet.
class _SuggestionList extends StatelessWidget {
  const _SuggestionList({
    required this.suggestions,
    required this.onSelect,
  });

  final List<SpeciesSuggestion> suggestions;
  final ValueChanged<SpeciesSuggestion> onSelect;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.only(top: 6),
      decoration: BoxDecoration(
        color: cs.surfaceContainerLow,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: cs.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
            child: Text(
              context.tr.species.suggestions.toUpperCase(),
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.8,
                color: cs.onSurfaceVariant,
              ),
            ),
          ),
          for (final suggestion in suggestions)
            _SuggestionRow(suggestion: suggestion, onSelect: onSelect),
        ],
      ),
    );
  }
}

class _SuggestionRow extends StatelessWidget {
  const _SuggestionRow({
    required this.suggestion,
    required this.onSelect,
  });

  final SpeciesSuggestion suggestion;
  final ValueChanged<SpeciesSuggestion> onSelect;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return ListTile(
      dense: true,
      onTap: () => onSelect(suggestion),
      leading: ClipOval(
        child: suggestion.imageUrl == null
            ? Container(
                width: 36,
                height: 36,
                color: cs.surfaceContainer,
                child: Icon(
                  AppIcons.species,
                  size: 18,
                  color: cs.onSurfaceVariant,
                ),
              )
            : CachedNetworkImage(
                imageUrl: suggestion.imageUrl!,
                width: 36,
                height: 36,
                fit: BoxFit.cover,
                placeholder: (_, __) => Container(
                  width: 36,
                  height: 36,
                  color: cs.surfaceContainer,
                ),
                errorWidget: (_, __, ___) => Container(
                  width: 36,
                  height: 36,
                  color: cs.surfaceContainer,
                  child: Icon(
                    AppIcons.brokenImageOutlined,
                    size: 18,
                    color: cs.onSurfaceVariant,
                  ),
                ),
              ),
      ),
      title: Text(suggestion.commonName),
      subtitle: Text(
        suggestion.scientificName,
        style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 11),
      ),
      trailing: suggestion.endangered
          ? Tooltip(
              message: context.tr.species.endangered,
              child: Icon(
                AppIcons.warning,
                size: 16,
                color: context.appColors.statusWarning,
              ),
            )
          : null,
    );
  }
}

/// The species photo, which comes from the picked suggestion.
///
/// Display only — tapping opens the lightbox.
class _ImageSection extends StatelessWidget {
  const _ImageSection({
    required this.imageUrl,
    required this.name,
  });

  final String? imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final url = imageUrl;
    return GestureDetector(
      onTap: url == null || url.isEmpty
          ? null
          : () => ImageLightbox.showUrls(
                context,
                urls: [url],
                initialIndex: 0,
              ),
      child: url != null && url.isNotEmpty
          ? CircleAvatar(
              radius: 40,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: url,
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
            )
          : CircleAvatar(
              radius: 40,
              backgroundColor: cs.surfaceContainer,
              child: Icon(
                AppIcons.species,
                size: 36,
                color: cs.onSurfaceVariant,
              ),
            ),
    );
  }
}
