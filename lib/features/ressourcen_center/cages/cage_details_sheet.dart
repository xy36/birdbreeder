import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/edit_section_divider.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/field_hint.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/field_label.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/save_bar.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/stepper2.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';

class CageDetailsSheet extends StatefulWidget {
  const CageDetailsSheet({super.key, this.initialCage});

  final Cage? initialCage;

  @override
  State<CageDetailsSheet> createState() => _CageDetailsSheetState();
}

class _CageDetailsSheetState extends State<CageDetailsSheet> {
  late Cage _cage;
  final _formKey = GlobalKey<FormState>();

  bool get isEdit => widget.initialCage != null;

  @override
  void initState() {
    super.initState();
    _cage = widget.initialCage ?? Cage.create();
  }

  static const _types = <(CageType, IconData)>[
    (CageType.aviary, AppIcons.cageAviary),
    (CageType.breedingBox, AppIcons.cageBreedingBox),
    (CageType.quarantine, AppIcons.cageQuarantine),
  ];

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdBreederCubit>();
    final resources = cubit.state.birdBreederResources;
    final occupied = resources.birds.where((b) => b.cageId == _cage.id).length;
    final tr = context.tr;
    final cagesTr = tr.cages;

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
                    icon: AppIcons.cageAviary,
                    label: cagesTr.section.basics,
                    first: true,
                  ),
                  FieldLabel(label: tr.resources.field.name, required: true),
                  TextFormField(
                    initialValue: _cage.name,
                    decoration:
                        InputDecoration(hintText: tr.resources.field.name),
                    onChanged: (v) => setState(() {
                      _cage = _cage.copyWith(name: v);
                    }),
                    validator: (v) => (v == null || v.trim().isEmpty)
                        ? tr.resources.field.required
                        : null,
                  ),
                  const SizedBox(height: 14),
                  FieldLabel(label: cagesTr.field.type),
                  _TypeSegmented(
                    value: _cage.type,
                    onChanged: (t) =>
                        setState(() => _cage = _cage.copyWith(type: t)),
                  ),
                  const SizedBox(height: 14),
                  FieldLabel(label: cagesTr.field.location),
                  TextFormField(
                    initialValue: _cage.location,
                    decoration: InputDecoration(
                      hintText: cagesTr.field.location,
                      prefixIcon: const Icon(AppIcons.locationOnOutlined),
                    ),
                    onChanged: (v) => setState(
                      () => _cage = _cage.copyWith(location: v),
                    ),
                  ),
                  EditSectionDivider(
                    icon: AppIcons.peopleOutline,
                    label: cagesTr.section.capacity,
                  ),
                  FieldLabel(
                    label: cagesTr.field.max_capacity,
                  ),
                  Stepper2(
                    value: _cage.capacity ?? 0,
                    min: occupied,
                    onChanged: (v) =>
                        setState(() => _cage = _cage.copyWith(capacity: v)),
                    unit: cagesTr.units.birds,
                  ),
                  FieldHint(
                    text: cagesTr.capacity_hint(Occupied: occupied),
                  ),
                  EditSectionDivider(
                    icon: AppIcons.notes,
                    label: tr.common.notes,
                  ),
                  TextFormField(
                    initialValue: _cage.notes,
                    minLines: 3,
                    maxLines: 6,
                    decoration: InputDecoration(hintText: tr.common.notes),
                    onChanged: (v) => setState(
                      () => _cage = _cage.copyWith(notes: v),
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
                      await cubit.updateCage(_cage);
                    } else {
                      await cubit.addCage(_cage);
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

class _TypeSegmented extends StatelessWidget {
  const _TypeSegmented({required this.value, required this.onChanged});

  final CageType? value;
  final ValueChanged<CageType> onChanged;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          for (final (id, icon) in _CageDetailsSheetState._types) ...[
            Expanded(
              child: GestureDetector(
                onTap: () => onChanged(id),
                child: Container(
                  height: 38,
                  decoration: BoxDecoration(
                    color: value == id ? cs.surface : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: value == id
                        ? [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.08),
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ]
                        : null,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        size: 15,
                        color: value == id ? cs.onSurface : cs.onSurfaceVariant,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        id.getDisplayName(context),
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color:
                              value == id ? cs.onSurface : cs.onSurfaceVariant,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (id != _CageDetailsSheetState._types.last.$1)
              const SizedBox(width: 6),
          ],
        ],
      ),
    );
  }
}
