import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/export/data/pdf_header_repository.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/features/export/domain/export_file_name.dart';
import 'package:birdbreeder/features/export/domain/export_format.dart';
import 'package:birdbreeder/features/export/domain/export_request.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_footer.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_header.dart';

/// What the user picked in the export sheet.
///
/// `profile` is null when no letterhead applies — either the breeder picked
/// "no letterhead" or they have never created one.
typedef ExportChoice<T> = ({
  ExportPreset<T> preset,
  ExportFormat format,
  PdfHeaderProfile? profile,

  /// File name without extension, already sanitized.
  String fileName,
});

/// Asks for format and column set, returning the choice or null if the user
/// backs out.
///
/// The sheet only picks — the caller runs the export through `ExportCubit`, so
/// the presentation listener that reports success stays mounted while the
/// share sheet is open.
Future<ExportChoice<T>?> showExportSheet<T>(
  BuildContext context,
  ExportRequest<T> request,
) {
  return showModalBottomSheet<ExportChoice<T>>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (_) => ExportSheet<T>(request: request),
  );
}

/// Format and preset picker for an export.
class ExportSheet<T> extends StatefulWidget {
  const ExportSheet({required this.request, super.key});

  final ExportRequest<T> request;

  @override
  State<ExportSheet<T>> createState() => _ExportSheetState<T>();
}

class _ExportSheetState<T> extends State<ExportSheet<T>> {
  static const _headerRepository = PdfHeaderRepository();

  late ExportPreset<T> _preset = widget.request.presets.first;
  ExportFormat _format = ExportFormat.pdf;

  List<PdfHeaderProfile> _profiles = const [];
  PdfHeaderProfile? _profile;

  late final String _suggestedName =
      ExportFileName.suggest(widget.request.fileBaseName);
  late final TextEditingController _fileName =
      TextEditingController(text: _suggestedName);

  @override
  void initState() {
    super.initState();
    unawaited(_loadProfiles());
  }

  @override
  void dispose() {
    _fileName.dispose();
    super.dispose();
  }

  /// Letterheads are read here rather than passed in, so the three screens
  /// that open this sheet stay unaware of them.
  Future<void> _loadProfiles() async {
    final profiles = await _headerRepository.getAll();
    if (!mounted) return;
    setState(() {
      _profiles = profiles;
      // getAll sorts the default first, so this picks it when one exists.
      _profile = profiles.firstOrNull;
    });
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.export;
    final theme = Theme.of(context);
    final count = widget.request.items.length;

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BottomSheetHeader(title: tr.title),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Text(
              '${widget.request.listTitle} · '
              '${count == 1 ? tr.row_count_one : tr.row_count_other(Count: count)}',
              style: theme.textTheme.bodyMedium
                  ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
            ),
          ),
          _SectionLabel(text: tr.format.title),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 12),
            child: SegmentedButton<ExportFormat>(
              segments: [
                for (final format in ExportFormat.values)
                  ButtonSegment(
                    value: format,
                    icon: Icon(
                      format == ExportFormat.pdf
                          ? AppIcons.description
                          : AppIcons.exportCsv,
                    ),
                    label: Text(format.label(context.tr)),
                  ),
              ],
              selected: {_format},
              onSelectionChanged: (selection) =>
                  setState(() => _format = selection.first),
            ),
          ),
          _SectionLabel(text: tr.file_name_label),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
            child: TextField(
              controller: _fileName,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                suffixText: '.${_format.fileExtension}',
                isDense: true,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              _format.description(context.tr),
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
            ),
          ),
          if (_format == ExportFormat.pdf && _profiles.isNotEmpty) ...[
            const SizedBox(height: 12),
            _SectionLabel(text: tr.profile_label),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
              child: DropdownButtonFormField<String?>(
                initialValue: _profile?.id,
                items: [
                  for (final profile in _profiles)
                    DropdownMenuItem(
                      value: profile.id,
                      child: Text(profile.name),
                    ),
                  DropdownMenuItem(
                    child: Text(tr.header.none),
                  ),
                ],
                onChanged: (id) => setState(
                  () => _profile = id == null
                      ? null
                      : _profiles.firstWhere((p) => p.id == id),
                ),
              ),
            ),
          ],
          const SizedBox(height: 12),
          _SectionLabel(text: tr.preset.title),
          Flexible(
            child: SingleChildScrollView(
              child: RadioGroup<String>(
                groupValue: _preset.id,
                onChanged: (id) => setState(
                  () => _preset = widget.request.presets
                      .firstWhere((preset) => preset.id == id),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final preset in widget.request.presets)
                      RadioListTile<String>(
                        value: preset.id,
                        title: Text(preset.label(context.tr)),
                        subtitle: Text(
                          preset.columns
                              .map((column) => column.label(context.tr))
                              .join(', '),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
            child: Row(
              spacing: 8,
              children: [
                Icon(
                  AppIcons.infoOutline,
                  size: 16,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                Expanded(
                  child: Text(
                    tr.scope_hint,
                    style: theme.textTheme.bodySmall
                        ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                  ),
                ),
              ],
            ),
          ),
          BottomSheetFooter(
            primaryButtonLabel: tr.action,
            onPrimaryButton: () => Navigator.of(context).pop(
              (
                preset: _preset,
                format: _format,
                profile: _profile,
                fileName: ExportFileName.sanitize(
                  _fileName.text,
                  fallback: _suggestedName,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(text, style: Theme.of(context).textTheme.labelLarge),
      );
}
