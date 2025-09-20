import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_footer.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_header.dart';

class AddBroodSheet extends StatefulWidget {
  const AddBroodSheet({super.key, this.brood, required this.breedingPair});

  final Brood? brood;
  final BreedingPair breedingPair;

  @override
  State<AddBroodSheet> createState() => _AddBroodSheetState();
}

class _AddBroodSheetState extends State<AddBroodSheet> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _notesCtrl;
  late DateTime _startAt;
  late DateTime? _endAt;

  @override
  void initState() {
    super.initState();
    _startAt = widget.brood?.start ?? DateTime.now();
    _endAt = widget.brood?.end;
    _notesCtrl = TextEditingController(text: widget.brood?.notes);
  }

  Future<void> _pickStartAtDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _startAt,
      firstDate: DateTime(1980),
      lastDate: DateTime(2050),
    );
    if (picked != null) setState(() => _startAt = picked);
  }

  Future<void> _pickEndAtDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _endAt ?? _startAt,
      firstDate: DateTime(1980),
      lastDate: DateTime(2050),
    );
    if (picked != null) setState(() => _endAt = picked);
  }

  bool _submitting = false;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) {
        return ListView(
          controller: scrollController,
          children: [
            BottomSheetHeader(title: context.tr.brood.add),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Form(
                key: _formKey,
                child: Column(
                  spacing: 12,
                  children: [
                    TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: context.tr.breeding_pairs.start_date,
                        prefixIcon: const Icon(Icons.event),
                      ),
                      controller: TextEditingController(
                        text: MaterialLocalizations.of(context)
                            .formatShortDate(_startAt),
                      ),
                      onTap: _submitting ? null : _pickStartAtDate,
                    ),
                    TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: context.tr.breeding_pairs.end_date,
                        prefixIcon: const Icon(Icons.event),
                      ),
                      controller: TextEditingController(
                        text: _endAt != null
                            ? MaterialLocalizations.of(context)
                                .formatShortDate(_endAt!)
                            : null,
                      ),
                      onTap: _submitting ? null : _pickEndAtDate,
                    ),
                    TextFormField(
                      controller: _notesCtrl,
                      minLines: 3,
                      maxLines: 5,
                      decoration: InputDecoration(
                        labelText: context.tr.breeding_pairs.notes,
                        alignLabelWithHint: true,
                        prefixIcon: const Icon(Icons.notes),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomSheetFooter(
              onSubmit: () async {
                final formOk = _formKey.currentState?.validate() ?? false;
                if (!formOk) return;

                setState(() => _submitting = true);

                final function = widget.brood != null
                    ? () => context.read<BirdBreederCubit>().updateBrood(
                          (widget.brood!.copyWith(
                            breedingPair: widget.breedingPair.id,
                            start: _startAt.toUtc(),
                            end: _endAt?.toUtc(),
                            notes: _notesCtrl.text,
                          )),
                        )
                    : () => context.read<BirdBreederCubit>().addBrood(
                          (Brood.create(
                            breedingPairId: widget.breedingPair.id,
                            start: _startAt.toUtc(),
                            end: _endAt?.toUtc(),
                            notes: _notesCtrl.text,
                          )),
                        );

                final result = await function();

                if (mounted) setState(() => _submitting = false);

                // on success pop the page
                if (result != null) {
                  if (context.mounted) await context.router.maybePop();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
