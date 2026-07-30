import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/bird_documents/domain/bird_document_type.dart';
import 'package:birdbreeder/features/export/data/pdf_header_repository.dart';
import 'package:birdbreeder/features/export/domain/export_file_name.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_footer.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_header.dart';

/// What the user picked in the document sheet.
///
/// `profile` is null when no letterhead applies — either the breeder picked
/// "no letterhead" or they have never created one.
typedef BirdDocumentChoice = ({
  BirdDocumentType type,
  PdfHeaderProfile? profile,

  /// File name without extension, already sanitized.
  String fileName,
});

/// Asks which document to generate for [bird], returning the choice or null
/// if the user backs out.
///
/// The sheet only picks — the caller runs the export through `ExportCubit`,
/// so the presentation listener that reports success stays mounted while the
/// share sheet is open.
Future<BirdDocumentChoice?> showBirdDocumentSheet(
  BuildContext context,
  Bird bird,
) {
  return showModalBottomSheet<BirdDocumentChoice>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (_) => BirdDocumentSheet(bird: bird),
  );
}

/// Document type, letterhead and file name picker for one bird.
class BirdDocumentSheet extends StatefulWidget {
  const BirdDocumentSheet({required this.bird, super.key});

  final Bird bird;

  @override
  State<BirdDocumentSheet> createState() => _BirdDocumentSheetState();
}

class _BirdDocumentSheetState extends State<BirdDocumentSheet> {
  static const _headerRepository = PdfHeaderRepository();

  BirdDocumentType _type = BirdDocumentType.profile;

  List<PdfHeaderProfile> _profiles = const [];
  PdfHeaderProfile? _profile;

  final TextEditingController _fileName = TextEditingController();

  /// The suggestion currently (or last) shown, so a name the breeder has
  /// edited survives switching the document type.
  String? _suggestion;

  @override
  void initState() {
    super.initState();
    unawaited(_loadProfiles());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_suggestion == null) {
      _suggestion = _suggestionFor(_type);
      _fileName.text = _suggestion!;
    }
  }

  @override
  void dispose() {
    _fileName.dispose();
    super.dispose();
  }

  /// Letterheads are read here rather than passed in, so callers stay
  /// unaware of them — same as the list export sheet.
  Future<void> _loadProfiles() async {
    final profiles = await _headerRepository.getAll();
    if (!mounted) return;
    setState(() {
      _profiles = profiles;
      // getAll sorts the default first, so this picks it when one exists.
      _profile = profiles.firstOrNull;
    });
  }

  /// `<stem>_<ring>_<date>`, e.g. `steckbrief_23-DKB-104_2026-07-30`.
  ///
  /// The ring number passes through the sanitizer because rings routinely
  /// contain slashes, which no file system accepts.
  String _suggestionFor(BirdDocumentType type) {
    final stem = type.fileStem(context.tr);
    final ring = widget.bird.ringNumber?.trim() ?? '';
    final base = ring.isEmpty ? stem : '${stem}_$ring';
    return ExportFileName.suggest(
      ExportFileName.sanitize(base, fallback: stem),
    );
  }

  void _selectType(BirdDocumentType type) {
    setState(() {
      if (_fileName.text == _suggestion) {
        _suggestion = _suggestionFor(type);
        _fileName.text = _suggestion!;
      }
      _type = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.documents;
    final theme = Theme.of(context);

    // The file name field sits directly above the footer; without this the
    // keyboard covers it, since bottom sheets do not avoid insets on their
    // own.
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BottomSheetHeader(title: tr.title),
            if (widget.bird.ringNumber != null)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: Text(
                  widget.bird.ringNumber!,
                  style: theme.textTheme.bodyMedium
                      ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                ),
              ),
            _SectionLabel(text: tr.type_label),
            Flexible(
              child: SingleChildScrollView(
                child: RadioGroup<BirdDocumentType>(
                  groupValue: _type,
                  onChanged: (type) {
                    if (type != null) _selectType(type);
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (final type in BirdDocumentType.values)
                        RadioListTile<BirdDocumentType>(
                          value: type,
                          secondary: Icon(type.icon),
                          title: Text(type.label(context.tr)),
                          subtitle: Text(type.description(context.tr)),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            if (_profiles.isNotEmpty) ...[
              const SizedBox(height: 12),
              _SectionLabel(text: context.tr.export.profile_label),
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
                      child: Text(context.tr.export.header.none),
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
            _SectionLabel(text: context.tr.export.file_name_label),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
              child: TextField(
                controller: _fileName,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  suffixText: '.pdf',
                  isDense: true,
                ),
              ),
            ),
            BottomSheetFooter(
              primaryButtonLabel: tr.action,
              onPrimaryButton: () => Navigator.of(context).pop(
                (
                  type: _type,
                  profile: _profile,
                  fileName: ExportFileName.sanitize(
                    _fileName.text,
                    fallback: _suggestion ?? _suggestionFor(_type),
                  ),
                ),
              ),
            ),
          ],
        ),
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
