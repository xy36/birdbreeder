import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/core/genetics/inbreeding_calculator.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair_status.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/inbreeding_presentation.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_footer.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_header.dart';
import 'package:birdbreeder/shared/widgets/inbreeding_banner.dart';
import 'package:birdbreeder/shared/widgets/picker/cage_picker_field.dart';
import 'package:birdbreeder/shared/widgets/picker/parent_picker_field.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddBreedingPairSheet extends StatefulWidget {
  const AddBreedingPairSheet({required this.breedingPair, super.key});

  final BreedingPair? breedingPair;

  @override
  State<AddBreedingPairSheet> createState() => _AddBreedingPairSheetState();
}

class _AddBreedingPairSheetState extends State<AddBreedingPairSheet> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _male = widget.breedingPair?.fatherResolved;
    _female = widget.breedingPair?.motherResolved;
    _status = widget.breedingPair?.status ?? BreedingPairStatus.active;
    _cage = widget.breedingPair?.cageResolved;
    _startAt = widget.breedingPair?.start ?? DateTime.now();
    _notesCtrl = TextEditingController(text: widget.breedingPair?.notes);
  }

  // Auswahlwerte
  Bird? _male;
  Bird? _female;
  late DateTime _startAt;
  late BreedingPairStatus _status;
  late Cage? _cage;
  late TextEditingController _notesCtrl;

  bool _submitting = false;

  @override
  void dispose() {
    _notesCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _startAt,
      firstDate: DateTime(1980),
      lastDate: DateTime(2050),
    );
    if (picked != null) setState(() => _startAt = picked);
  }

  /// Inbreeding coefficient of the selected pair, or null while a bird is
  /// missing.
  InbreedingResult? get _inbreedingResult => (_male != null && _female != null)
      ? inbreedingForPair(_male!, _female!)
      : null;

  /// Asks the user to confirm creating a pair with elevated inbreeding risk.
  Future<bool> _confirmInbreeding(InbreedingResult result) async {
    final tr = context.tr.inbreeding;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(tr.pair_warning_title),
        content: Text(
          tr.pair_warning_body(
            Percent: formatInbreedingPercent(result.percent),
            Severity: result.severity.label(dialogContext),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(context.tr.common.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(tr.proceed_anyway),
          ),
        ],
      ),
    );
    return confirmed ?? false;
  }

  Future<void> _submit() async {
    final formOk = _formKey.currentState?.validate() ?? false;
    if (!formOk) return;

    final inbreeding = _inbreedingResult;
    if (inbreeding != null && inbreeding.severity != InbreedingSeverity.none) {
      final proceed = await _confirmInbreeding(inbreeding);
      if (!proceed) return;
    }

    setState(() => _submitting = true);

    final function = widget.breedingPair != null
        ? () => context.read<BirdBreederCubit>().updateBreedingPair(
              (widget.breedingPair!.copyWith(
                fatherId: _male!.id,
                motherId: _female!.id,
                start: _startAt,
                notes: _notesCtrl.text,
                status: _status,
                cageId: _cage?.id,
              )),
            )
        : () => context.read<BirdBreederCubit>().addBreedingPair(
              (BreedingPair.create(
                fatherId: _male!.id,
                motherId: _female!.id,
                start: _startAt,
                notes: _notesCtrl.text,
                status: _status,
                cageId: _cage?.id,
              )),
            );

    final result = await function();

    if (mounted) setState(() => _submitting = false);

    // on success pop the page
    if (result != null) {
      if (mounted) await context.router.maybePop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.6,
      builder: (context, scrollController) => Column(
        children: [
          BottomSheetHeader(
            title: widget.breedingPair == null
                ? context.tr.breeding_pairs.add
                : context.tr.breeding_pairs.edit,
          ),
          Expanded(
            child: Form(
              key: _formKey,
              child: Builder(
                builder: (context) {
                  final inbreeding = _inbreedingResult;
                  return ListView(
                    padding: const EdgeInsets.all(12),
                    controller: scrollController,
                    children: <Widget>[
                      if (inbreeding != null &&
                          inbreeding.severity != InbreedingSeverity.none)
                        InbreedingBanner(result: inbreeding),
                      ParentPickerField.father(
                        initialValue: _male,
                        speciesId: _female?.speciesId,
                        validator: FormBuilderValidators.required(),
                        enabled: widget.breedingPair == null,
                        onChanged: (bird) {
                          setState(() {
                            _male = bird;
                          });
                        },
                      ),
                      ParentPickerField.mother(
                        initialValue: _female,
                        speciesId: _male?.speciesId,
                        validator: FormBuilderValidators.required(),
                        enabled: widget.breedingPair == null,
                        onChanged: (bird) {
                          setState(() {
                            _female = bird;
                          });
                        },
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              readOnly: true,
                              decoration: InputDecoration(
                                labelText: context.tr.breeding_pairs.start_date,
                                prefixIcon: const Icon(AppIcons.date),
                              ),
                              controller: TextEditingController(
                                text: MaterialLocalizations.of(context)
                                    .formatShortDate(_startAt),
                              ),
                              onTap: _submitting ? null : _pickDate,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: DropdownButtonFormField<BreedingPairStatus>(
                              value: _status,
                              decoration: InputDecoration(
                                labelText:
                                    context.tr.breeding_pairs.status.name,
                                prefixIcon: const Icon(AppIcons.status),
                              ),
                              items: BreedingPairStatus.values
                                  .map(
                                    (status) => DropdownMenuItem(
                                      value: status,
                                      child: Text(
                                        status.getDisplayName(context),
                                      ),
                                    ),
                                  )
                                  .toList(),
                              onChanged: _submitting
                                  ? null
                                  : (v) => setState(() => _status = v!),
                            ),
                          ),
                        ],
                      ),
                      CagePickerField(
                        initialValue: _cage,
                        enabled: !_submitting,
                        onChanged: (cage) => _cage = cage,
                      ),
                      TextFormField(
                        controller: _notesCtrl,
                        minLines: 3,
                        maxLines: 5,
                        decoration: InputDecoration(
                          labelText: context.tr.breeding_pairs.notes,
                          alignLabelWithHint: true,
                          prefixIcon: const Icon(AppIcons.notes),
                        ),
                        enabled: !_submitting,
                      ),
                    ].genericJoin(12.heightBox),
                  );
                },
              ),
            ),
          ),
          BottomSheetFooter(
            onPrimaryButton: _submit,
          ),
        ],
      ),
    );
  }
}
