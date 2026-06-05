import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/edit_section_divider.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/field_label.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/save_bar.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorDetailsSheet extends StatefulWidget {
  const ColorDetailsSheet({super.key, this.initialColor});

  final BirdColor? initialColor;

  @override
  State<ColorDetailsSheet> createState() => _ColorDetailsSheetState();
}

class _ColorDetailsSheetState extends State<ColorDetailsSheet> {
  late BirdColor _color;
  final _formKey = GlobalKey<FormState>();

  bool get isEdit => widget.initialColor != null;

  @override
  void initState() {
    super.initState();
    _color = widget.initialColor ?? BirdColor.create(hex: '#7CB97A');
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdBreederCubit>();
    final tr = context.tr;
    final colorsTr = tr.colors;

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
                    icon: AppIcons.paletteOutlined,
                    label: tr.resources.section.identity,
                    first: true,
                  ),
                  FieldLabel(label: tr.resources.field.name, required: true),
                  TextFormField(
                    initialValue: _color.name,
                    decoration:
                        InputDecoration(hintText: tr.resources.field.name),
                    onChanged: (v) =>
                        setState(() => _color = _color.copyWith(name: v)),
                    validator: (v) => (v == null || v.trim().isEmpty)
                        ? tr.resources.field.required
                        : null,
                  ),
                  const SizedBox(height: 14),
                  FieldLabel(label: colorsTr.value_label),
                  _ColorPickerField(
                    hex: _color.hex,
                    onChanged: (h) =>
                        setState(() => _color = _color.copyWith(hex: h)),
                  ),
                  EditSectionDivider(
                    icon: AppIcons.hubOutlined,
                    label: colorsTr.genetics_section,
                  ),
                  FieldLabel(label: colorsTr.inheritance_label),
                  TextFormField(
                    initialValue: _color.inheritance,
                    decoration: InputDecoration(
                      hintText: colorsTr.inheritance_hint,
                      prefixIcon: const Icon(AppIcons.scienceOutlined),
                    ),
                    onChanged: (v) => setState(
                      () => _color = _color.copyWith(inheritance: v),
                    ),
                  ),
                  EditSectionDivider(
                    icon: AppIcons.notes,
                    label: tr.common.notes,
                  ),
                  TextFormField(
                    initialValue: _color.notes,
                    minLines: 3,
                    maxLines: 6,
                    decoration: InputDecoration(hintText: tr.common.notes),
                    onChanged: (v) =>
                        setState(() => _color = _color.copyWith(notes: v)),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
            SafeArea(
              top: false,
              child: SaveBar(
                onCancel: () => Navigator.pop(context),
                onSave: () async {
                  if (_formKey.currentState?.validate() != true) return;
                  if (isEdit) {
                    await cubit.updateColor(_color);
                  } else {
                    cubit.addColor(_color);
                  }
                  if (!context.mounted) return;
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorPickerField extends StatelessWidget {
  const _ColorPickerField({required this.hex, required this.onChanged});

  final String? hex;
  final ValueChanged<String> onChanged;

  Color _safeColor(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    if (hex == null || hex!.isEmpty) return cs.surfaceContainer;
    try {
      return hexToColor(hex!);
    } on FormatException {
      return cs.surfaceContainer;
    }
  }

  String _hexFromColor(Color c) {
    final argb = c.toARGB32();
    return '#${argb.toRadixString(16).padLeft(8, '0').substring(2).toUpperCase()}';
  }

  Future<void> _openPicker(BuildContext context) async {
    var current = _safeColor(context);
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
    final swatch = _safeColor(context);
    return InkWell(
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
                color: swatch,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: cs.outline, width: 1.5),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                (hex != null && hex!.isNotEmpty)
                    ? hex!.toUpperCase()
                    : '#RRGGBB',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: (hex != null && hex!.isNotEmpty)
                      ? cs.onSurface
                      : cs.onSurfaceVariant,
                  letterSpacing: 0.3,
                ),
              ),
            ),
            Icon(AppIcons.colorize, color: cs.onSurfaceVariant),
          ],
        ),
      ),
    );
  }
}
