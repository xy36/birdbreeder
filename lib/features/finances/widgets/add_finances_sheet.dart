import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/finances_extension.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/finance.dart';
import 'package:birdbreeder/features/birds/domain/models/finance_category.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_footer.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_header.dart';
import 'package:birdbreeder/shared/widgets/category_avatar.dart';
import 'package:birdbreeder/shared/widgets/picker/bird_picker_field.dart';
import 'package:birdbreeder/shared/widgets/picker/finances_category_picker_field.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddFinancesSheet extends StatefulWidget {
  const AddFinancesSheet({super.key, required this.finances});

  final Finance? finances;

  @override
  State<AddFinancesSheet> createState() => _AddFinancesSheetState();
}

class _AddFinancesSheetState extends State<AddFinancesSheet> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _category = widget.finances?.categoryResolved;
    _bird = widget.finances?.birdResolved;
    _date = widget.finances?.date ?? DateTime.now();
    _notesCtrl = TextEditingController(text: widget.finances?.notes);
    _amountCtrl =
        TextEditingController(text: widget.finances?.amount.toString());

    _titleCtrl = TextEditingController(text: widget.finances?.title);
  }

  FinanceCategory? _category;
  double? get _amount =>
      _amountCtrl.text.isNotEmpty ? double.tryParse(_amountCtrl.text) : null;
  Bird? _bird;
  DateTime _date = DateTime.now();

  late TextEditingController _notesCtrl;
  late TextEditingController _titleCtrl;
  late TextEditingController _amountCtrl;

  bool _submitting = false;

  @override
  void dispose() {
    _titleCtrl.dispose();
    _notesCtrl.dispose();
    _amountCtrl.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1980),
      lastDate: DateTime(2050),
    );
    if (picked != null) setState(() => _date = picked);
  }

  Future<void> _submit() async {
    final formOk = _formKey.currentState?.validate() ?? false;
    if (!formOk) return;

    setState(() => _submitting = true);

    final function = widget.finances != null
        ? () => context.read<BirdBreederCubit>().updateFinances(
              (widget.finances!.copyWith(
                categoryId: _category!.id,
                birdId: _bird?.id,
                title: _titleCtrl.text,
                notes: _notesCtrl.text,
                amount: _amount!,
                date: _date,
              )),
            )
        : () => context.read<BirdBreederCubit>().addFinances(
              Finance.create(
                categoryId: _category!.id,
                birdId: _bird?.id,
                title: _titleCtrl.text,
                notes: _notesCtrl.text,
                amount: _amount!,
                date: _date,
              ),
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
    return Stack(
      children: [
        DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.6,
          builder: (context, scrollController) => Column(
            children: [
              BottomSheetHeader(
                title: context.tr.finances.add.name,
              ),
              Form(
                key: _formKey,
                child: Builder(
                  builder: (context) {
                    return Expanded(
                      child: ListView(
                        padding: const EdgeInsets.all(12),
                        controller: scrollController,
                        children: <Widget>[
                          TextFormField(
                            controller: _titleCtrl,
                            minLines: 1,
                            decoration: InputDecoration(
                              labelText: context.tr.finances.add.title,
                              alignLabelWithHint: true,
                            ),
                            enabled: !_submitting,
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                            ]),
                          ),
                          Row(
                            spacing: 8,
                            children: [
                              Expanded(
                                child: FinancesCategoryPickerField(
                                  initialValue: _category,
                                  enabled: !_submitting,
                                  onChanged: (category) => {
                                    setState(
                                      () => _category = category,
                                    ),
                                  },
                                  validator: FormBuilderValidators.required(),
                                ),
                              ),
                              if (_category != null)
                                CategoryAvatar(cat: _category!),
                            ],
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: context.tr.finances.add.date,
                            ),
                            controller: TextEditingController(
                              text: MaterialLocalizations.of(context)
                                  .formatShortDate(_date),
                            ),
                            onTap: _submitting ? null : _pickDate,
                            validator: FormBuilderValidators.required(),
                          ),
                          TextFormField(
                            controller: _amountCtrl,
                            decoration: InputDecoration(
                              labelText: context.tr.finances.add.amount,
                              alignLabelWithHint: true,
                            ),
                            enabled: !_submitting,
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(),
                              FormBuilderValidators.numeric(),
                              FormBuilderValidators.notEqual(0),
                            ]),
                          ),
                          TextFormField(
                            controller: _notesCtrl,
                            minLines: 3,
                            maxLines: 5,
                            decoration: InputDecoration(
                              labelText: context.tr.finances.add.notes,
                              alignLabelWithHint: true,
                            ),
                            enabled: !_submitting,
                          ),
                          BirdPickerField(
                            initialValue: _bird,
                            label: context.tr.finances.add.bird,
                            onChanged: (bird) {
                              setState(() {
                                _bird = bird;
                              });
                            },
                          ),
                        ].genericJoin(12.heightBox),
                      ),
                    );
                  },
                ),
              ),
              BottomSheetFooter(
                onSubmit: _submit,
              ),
            ],
          ),
        ),
        // Loading Overlay
        if (_submitting)
          Positioned.fill(
            child: ColoredBox(
              color:
                  Theme.of(context).colorScheme.surface.withValues(alpha: 0.1),
              child: const Center(child: CircularProgressIndicator()),
            ),
          ),
      ],
    );
  }
}
