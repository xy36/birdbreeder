import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair_status.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_footer.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_header.dart';
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

  Future<void> _submit() async {
    final formOk = _formKey.currentState?.validate() ?? false;
    if (!formOk) return;

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
            title: context.tr.breeding_pairs.add,
          ),
          Expanded(
            child: Form(
              key: _formKey,
              child: Builder(
                builder: (context) {
                  return ListView(
                    padding: const EdgeInsets.all(12),
                    controller: scrollController,
                    children: <Widget>[
                      ParentPickerField.father(
                        initialValue: _male,
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
            onSubmit: _submit,
          ),
        ],
      ),
    );
  }
}
