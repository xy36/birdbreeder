import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/edit_section_divider.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/field_hint.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/field_label.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/save_bar.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CategoriesDetailsSheet extends StatefulWidget {
  const CategoriesDetailsSheet({super.key, this.initialCategory});

  final FinanceCategory? initialCategory;

  @override
  State<CategoriesDetailsSheet> createState() => _CategoriesDetailsSheetState();
}

class _CategoriesDetailsSheetState extends State<CategoriesDetailsSheet> {
  late FinanceCategory _category;
  final _formKey = GlobalKey<FormState>();

  bool get isEdit => widget.initialCategory != null;

  @override
  void initState() {
    super.initState();
    _category = widget.initialCategory ??
        FinanceCategory.create(
          name: '',
          color: Colors.blue.toARGB32().toRadixString(16),
          kind: FinanceCategoryKind.income,
        );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdBreederCubit>();
    final isIncome = _category.kind == FinanceCategoryKind.income;
    final usage = cubit.state.birdBreederResources.finances
        .where((f) => f.categoryId == _category.id)
        .length;

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
                    icon: AppIcons.accountBalanceWalletOutlined,
                    label: context.tr.resources.section.identity,
                    first: true,
                  ),
                  FieldLabel(
                    label: context.tr.finances.categories.designation,
                    required: true,
                  ),
                  TextFormField(
                    initialValue: _category.name,
                    decoration: InputDecoration(
                      hintText: context.tr.resources.field.name,
                    ),
                    onChanged: (v) => setState(
                      () => _category = _category.copyWith(name: v),
                    ),
                    validator: (v) => (v == null || v.trim().isEmpty)
                        ? context.tr.resources.field.required
                        : null,
                  ),
                  const SizedBox(height: 14),
                  FieldLabel(
                    label: context.tr.cages.field.type,
                    required: true,
                  ),
                  _KindSegmented(
                    isIncome: isIncome,
                    onChanged: (k) => setState(
                      () => _category = _category.copyWith(kind: k),
                    ),
                  ),
                  FieldHint(
                    text: usage > 0
                        ? context.tr.finances.categories
                            .type_lock_hint(Usage: usage)
                        : context.tr.finances.categories.type_lock_default,
                  ),
                  const SizedBox(height: 14),
                  FieldLabel(label: context.tr.resources.section.color),
                  _ColorRow(
                    hex: _category.color,
                    onChanged: (h) => setState(
                      () => _category = _category.copyWith(color: h),
                    ),
                  ),
                  EditSectionDivider(
                    icon: AppIcons.notes,
                    label: context.tr.common.notes,
                  ),
                  TextFormField(
                    initialValue: _category.notes,
                    minLines: 3,
                    maxLines: 6,
                    decoration: InputDecoration(
                      hintText: context.tr.common.notes,
                    ),
                    onChanged: (v) => setState(
                      () => _category = _category.copyWith(notes: v),
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
                      await cubit.updateFinancesCategory(_category);
                    } else {
                      await cubit.addFinancesCategory(_category);
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

class _KindSegmented extends StatelessWidget {
  const _KindSegmented({required this.isIncome, required this.onChanged});

  final bool isIncome;
  final ValueChanged<FinanceCategoryKind> onChanged;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    Widget seg(
      bool active,
      IconData icon,
      String label,
      Color accent,
      VoidCallback onTap,
    ) {
      return Expanded(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 38,
            decoration: BoxDecoration(
              color: active ? cs.surface : Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              boxShadow: active
                  ? [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.08),
                        blurRadius: 3,
                        offset: const Offset(0, 1),
                      ),
                    ]
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 15,
                  color: active ? accent : cs.onSurfaceVariant,
                ),
                const SizedBox(width: 5),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: active ? cs.onSurface : cs.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          seg(
            isIncome,
            AppIcons.trendingUp,
            context.tr.finances.categories.kind_singular.income,
            context.appColors.income,
            () => onChanged(FinanceCategoryKind.income),
          ),
          const SizedBox(width: 6),
          seg(
            !isIncome,
            AppIcons.trendingDown,
            context.tr.finances.categories.kind_singular.expense,
            context.appColors.expense,
            () => onChanged(FinanceCategoryKind.expense),
          ),
        ],
      ),
    );
  }
}

class _ColorRow extends StatelessWidget {
  const _ColorRow({required this.hex, required this.onChanged});

  final String hex;
  final ValueChanged<String> onChanged;

  static const _presets = <String>[
    '#2E7D32',
    '#C62828',
    '#1976D2',
    '#ED6C02',
    '#9C27B0',
    '#0097A7',
    '#5D4037',
    '#455A64',
    '#F2D86A',
    '#7A6418',
  ];

  Color _safe(BuildContext context, String h) {
    try {
      return hexToColor(h);
    } on FormatException {
      return Theme.of(context).colorScheme.surfaceContainer;
    }
  }

  String _hexFromColor(Color c) {
    final argb = c.toARGB32();
    return '#${argb.toRadixString(16).padLeft(8, '0').substring(2).toUpperCase()}';
  }

  Future<void> _openPicker(BuildContext context) async {
    var current = _safe(context, hex);
    final picked = await showDialog<Color>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(ctx.tr.resources.color_picker.title),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: current,
            onColorChanged: (c) => current = c,
            enableAlpha: false,
            labelTypes: const [ColorLabelType.hex, ColorLabelType.rgb],
            pickerAreaHeightPercent: 0.7,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(ctx.tr.common.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, current),
            child: Text(ctx.tr.common.apply),
          ),
        ],
      ),
    );
    if (picked != null) onChanged(_hexFromColor(picked));
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final inPreset = _presets.any((h) => h.toUpperCase() == hex.toUpperCase());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => _openPicker(context),
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: cs.surface,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: cs.outlineVariant, width: 1.5),
            ),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 44,
                  decoration: BoxDecoration(
                    color: _safe(context, hex),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: cs.outline, width: 1.5),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    hex.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: cs.onSurface,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
                Icon(AppIcons.colorize, color: cs.onSurfaceVariant),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _presets.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 10,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ),
          itemBuilder: (_, i) {
            final h = _presets[i];
            final isSel = inPreset && h.toUpperCase() == hex.toUpperCase();
            return GestureDetector(
              onTap: () => onChanged(h),
              child: Container(
                decoration: BoxDecoration(
                  color: _safe(context, h),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: isSel ? cs.onSurface : cs.outline,
                    width: isSel ? 2.5 : 1.5,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
