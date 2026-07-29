import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/export/data/pdf_fonts.dart';
import 'package:birdbreeder/features/export/data/pdf_header_renderer.dart';
import 'package:birdbreeder/features/export/data/pdf_header_repository.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/features/export/presentation/header/widgets/placeholder_chips.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:birdbreeder/services/images/bird_image_picker.dart';
import 'package:birdbreeder/services/images/image_store.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

/// Edits one letterhead profile and shows what it actually prints.
///
/// The preview is a real PDF built through [PdfHeaderRenderer] — the same code
/// the export runs — so the arrangement a breeder sees here cannot drift from
/// the document they hand out.
@RoutePage()
class PdfHeaderEditPage extends StatefulWidget {
  const PdfHeaderEditPage({this.profile, super.key});

  /// Null when creating a new profile.
  final PdfHeaderProfile? profile;

  @override
  State<PdfHeaderEditPage> createState() => _PdfHeaderEditPageState();
}

class _PdfHeaderEditPageState extends State<PdfHeaderEditPage> {
  static const _repository = PdfHeaderRepository();

  late PdfHeaderProfile _profile;
  late final TextEditingController _name;
  late final TextEditingController _title;
  late final TextEditingController _subtitle;
  late final TextEditingController _footer;
  late final TextEditingController _address;

  Uint8List? _logoBytes;
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    _profile = widget.profile ??
        PdfHeaderProfile.create(name: t.export.header.new_name);
    _name = TextEditingController(text: _profile.name);
    _title = TextEditingController(text: _profile.titleTemplate ?? '');
    _subtitle = TextEditingController(text: _profile.subtitleTemplate ?? '');
    _footer = TextEditingController(text: _profile.footerTemplate ?? '');
    _address = TextEditingController(text: _profile.addressOverride ?? '');
    _loadLogo();
  }

  @override
  void dispose() {
    _name.dispose();
    _title.dispose();
    _subtitle.dispose();
    _footer.dispose();
    _address.dispose();
    super.dispose();
  }

  Future<void> _loadLogo() async {
    final hash = _profile.logoHash;
    if (hash == null) return;
    final file = await ImageStore.get(hash);
    if (file == null || !mounted) return;
    final bytes = await file.readAsBytes();
    if (mounted) setState(() => _logoBytes = bytes);
  }

  /// Mirrors the text fields into the profile so the preview refreshes.
  void _syncTexts() {
    setState(() {
      _profile = _profile.copyWith(
        name: _name.text,
        titleTemplate: _title.text,
        subtitleTemplate: _subtitle.text,
        footerTemplate: _footer.text,
        addressOverride: _address.text.trim().isEmpty ? null : _address.text,
      );
    });
  }

  Future<void> _pickLogo() async {
    final images = await BirdImagePicker.pickFromGallery();
    if (images.isEmpty) return;

    final hash = await ImageStore.put(images.first);
    if (!mounted) return;
    setState(() {
      _logoBytes = images.first;
      _profile = _profile.copyWith(logoHash: hash);
    });
  }

  /// Drops the reference only. The blob stays until the next garbage
  /// collection, which is what makes an accidental removal recoverable.
  void _removeLogo() => setState(() {
        _logoBytes = null;
        _profile = _profile.copyWith(logoHash: null);
      });

  void _fillAddressFromProfile() {
    final breeder = _appUser;
    if (breeder == null) return;

    final city = <String?>[breeder.postalCode, breeder.city]
        .where((part) => part != null && part.trim().isNotEmpty)
        .join(' ');
    _address.text = <String?>[
      breeder.fullName,
      breeder.address,
      if (city.isNotEmpty) city,
    ]
        .where((line) => line != null && line.trim().isNotEmpty)
        .map((line) => line!.trim())
        .join('\n');
    _syncTexts();
  }

  Future<void> _save() async {
    _syncTexts();
    setState(() => _saving = true);
    final saved = await _repository.save(_profile);
    if (!mounted) return;
    setState(() {
      _profile = saved;
      _saving = false;
    });
    context.snackSuccess(context.tr.export.header.saved);
    await context.router.maybePop(true);
  }

  Contact? get _appUser =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.contacts.appUser;

  /// Renders a one-page sample so the header can be judged in place.
  Future<Uint8List> _buildPreview(PdfPageFormat format) async {
    // Read everything off the context before awaiting; PdfPreview calls this
    // again on every rebuild and the widget may be gone by then.
    final translations = context.tr;
    final tr = translations.export.header;
    final breeder = _appUser;
    final fonts = await PdfFonts.load();

    final document = pw.Document(theme: fonts.theme)
      ..addPage(
        pw.Page(
          pageFormat: format,
          margin: const pw.EdgeInsets.fromLTRB(28, 28, 28, 24),
          build: (_) => pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.stretch,
            children: [
              PdfHeaderRenderer.build(
                profile: _profile,
                context: ExportContext(
                  listTitle: tr.preview_list,
                  rowCount: 42,
                  generatedAt: DateTime.now(),
                  breeder: breeder,
                  activeFilters: [tr.preview_filter],
                ),
                t: translations,
                logoBytes: _logoBytes,
              ),
              pw.Expanded(
                child: pw.Container(color: PdfColors.grey100),
              ),
            ],
          ),
        ),
      );

    return document.save();
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.export.header;

    return Scaffold(
      appBar: AppBar(
        title: Text(tr.title),
        actions: [
          TextButton(
            onPressed: _saving ? null : _save,
            child: Text(context.tr.common.save),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        children: [
          _PreviewCard(builder: _buildPreview, profile: _profile),
          const SizedBox(height: 16),
          TextField(
            controller: _name,
            decoration: InputDecoration(
              labelText: tr.name_label,
              hintText: tr.name_hint,
            ),
            onChanged: (_) => _syncTexts(),
          ),
          const SizedBox(height: 8),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(tr.set_default),
            value: _profile.isDefault,
            onChanged: (value) =>
                setState(() => _profile = _profile.copyWith(isDefault: value)),
          ),
          _SectionHeader(text: tr.section_layout),
          _LayoutPicker(
            value: _profile.layout,
            onChanged: (layout) =>
                setState(() => _profile = _profile.copyWith(layout: layout)),
          ),
          _SectionHeader(text: tr.section_logo),
          _LogoRow(
            bytes: _logoBytes,
            size: _profile.logoSize,
            onPick: _pickLogo,
            onRemove: _removeLogo,
            onSizeChanged: (size) =>
                setState(() => _profile = _profile.copyWith(logoSize: size)),
          ),
          _SectionHeader(text: tr.section_text),
          _TemplateField(
            controller: _title,
            label: tr.title_label,
            onChanged: _syncTexts,
          ),
          _TemplateField(
            controller: _subtitle,
            label: tr.subtitle_label,
            onChanged: _syncTexts,
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(tr.address_show),
            value: _profile.showAddressBlock,
            onChanged: (value) => setState(
              () => _profile = _profile.copyWith(showAddressBlock: value),
            ),
          ),
          if (_profile.showAddressBlock) ...[
            TextField(
              controller: _address,
              minLines: 2,
              maxLines: 4,
              decoration: InputDecoration(
                labelText: tr.address_override_label,
                hintText: tr.address_override_hint,
              ),
              onChanged: (_) => _syncTexts(),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                icon: const Icon(AppIcons.contacts),
                label: Text(tr.address_from_profile),
                onPressed: _fillAddressFromProfile,
              ),
            ),
          ],
          _SectionHeader(text: tr.section_meta),
          _Toggle(
            label: tr.show_date,
            value: _profile.showDate,
            onChanged: (v) =>
                setState(() => _profile = _profile.copyWith(showDate: v)),
          ),
          _Toggle(
            label: tr.show_count,
            value: _profile.showCount,
            onChanged: (v) =>
                setState(() => _profile = _profile.copyWith(showCount: v)),
          ),
          _Toggle(
            label: tr.show_filter,
            value: _profile.showFilterSummary,
            onChanged: (v) => setState(
              () => _profile = _profile.copyWith(showFilterSummary: v),
            ),
          ),
          _Toggle(
            label: tr.show_breeder_number,
            value: _profile.showBreederNumber,
            onChanged: (v) => setState(
              () => _profile = _profile.copyWith(showBreederNumber: v),
            ),
          ),
          _Toggle(
            label: tr.show_divider,
            value: _profile.showDivider,
            onChanged: (v) =>
                setState(() => _profile = _profile.copyWith(showDivider: v)),
          ),
          _SectionHeader(text: tr.section_footer),
          _TemplateField(
            controller: _footer,
            label: tr.footer_label,
            onChanged: _syncTexts,
          ),
          _Toggle(
            label: tr.show_page_numbers,
            value: _profile.showPageNumbers,
            onChanged: (v) => setState(
              () => _profile = _profile.copyWith(showPageNumbers: v),
            ),
          ),
        ],
      ),
    );
  }
}

class _PreviewCard extends StatelessWidget {
  const _PreviewCard({required this.builder, required this.profile});

  final Future<Uint8List> Function(PdfPageFormat format) builder;

  /// Only used as a rebuild key so the preview refreshes on every edit.
  final PdfHeaderProfile profile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: PdfPreview(
        key: ValueKey(profile),
        build: builder,
        useActions: false,
        canChangePageFormat: false,
        canChangeOrientation: false,
        canDebug: false,
        scrollViewDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 4),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w700,
              ),
        ),
      );
}

class _Toggle extends StatelessWidget {
  const _Toggle({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) => SwitchListTile(
        contentPadding: EdgeInsets.zero,
        dense: true,
        title: Text(label),
        value: value,
        onChanged: onChanged,
      );
}

class _TemplateField extends StatelessWidget {
  const _TemplateField({
    required this.controller,
    required this.label,
    required this.onChanged,
  });

  final TextEditingController controller;
  final String label;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(labelText: label),
          onChanged: (_) => onChanged(),
        ),
        const SizedBox(height: 6),
        PlaceholderChips(controller: controller),
        const SizedBox(height: 4),
        Text(
          context.tr.export.header.placeholders_hint,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
      ],
    );
  }
}

class _LayoutPicker extends StatelessWidget {
  const _LayoutPicker({required this.value, required this.onChanged});

  final PdfHeaderLayout value;
  final ValueChanged<PdfHeaderLayout> onChanged;

  IconData _iconFor(PdfHeaderLayout layout) => switch (layout) {
        PdfHeaderLayout.logoLeft => AppIcons.layoutLogoLeft,
        PdfHeaderLayout.centered => AppIcons.layoutCentered,
        PdfHeaderLayout.addressLeftLogoRight => AppIcons.layoutAddressLeft,
      };

  String _labelFor(BuildContext context, PdfHeaderLayout layout) {
    final tr = context.tr.export.header.layout;
    return switch (layout) {
      PdfHeaderLayout.logoLeft => tr.logo_left,
      PdfHeaderLayout.centered => tr.centered,
      PdfHeaderLayout.addressLeftLogoRight => tr.address_left_logo_right,
    };
  }

  @override
  Widget build(BuildContext context) {
    return RadioGroup<PdfHeaderLayout>(
      groupValue: value,
      onChanged: (selected) {
        if (selected != null) onChanged(selected);
      },
      child: Column(
        children: [
          for (final layout in PdfHeaderLayout.values)
            RadioListTile<PdfHeaderLayout>(
              contentPadding: EdgeInsets.zero,
              dense: true,
              value: layout,
              secondary: Icon(_iconFor(layout)),
              title: Text(_labelFor(context, layout)),
            ),
        ],
      ),
    );
  }
}

class _LogoRow extends StatelessWidget {
  const _LogoRow({
    required this.bytes,
    required this.size,
    required this.onPick,
    required this.onRemove,
    required this.onSizeChanged,
  });

  final Uint8List? bytes;
  final PdfLogoSize size;
  final VoidCallback onPick;
  final VoidCallback onRemove;
  final ValueChanged<PdfLogoSize> onSizeChanged;

  String _sizeLabel(BuildContext context, PdfLogoSize value) {
    final tr = context.tr.export.header.logo_size;
    return switch (value) {
      PdfLogoSize.small => tr.small,
      PdfLogoSize.medium => tr.medium,
      PdfLogoSize.large => tr.large,
    };
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.export.header;
    final scheme = Theme.of(context).colorScheme;
    final logo = bytes;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 12,
          children: [
            Container(
              width: 72,
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: scheme.outlineVariant),
                borderRadius: BorderRadius.circular(8),
              ),
              child: logo == null
                  ? Icon(AppIcons.imageOutlined, color: scheme.outline)
                  : Padding(
                      padding: const EdgeInsets.all(4),
                      child: Image.memory(logo, fit: BoxFit.contain),
                    ),
            ),
            Expanded(
              child: Wrap(
                spacing: 8,
                children: [
                  FilledButton.tonalIcon(
                    icon: const Icon(AppIcons.gallery),
                    label: Text(logo == null ? tr.logo_pick : tr.logo_replace),
                    onPressed: onPick,
                  ),
                  if (logo != null)
                    TextButton(
                      onPressed: onRemove,
                      child: Text(tr.logo_remove),
                    ),
                ],
              ),
            ),
          ],
        ),
        if (logo != null) ...[
          const SizedBox(height: 12),
          SegmentedButton<PdfLogoSize>(
            segments: [
              for (final value in PdfLogoSize.values)
                ButtonSegment(
                  value: value,
                  label: Text(_sizeLabel(context, value)),
                ),
            ],
            selected: {size},
            onSelectionChanged: (selection) => onSizeChanged(selection.first),
          ),
        ],
      ],
    );
  }
}
