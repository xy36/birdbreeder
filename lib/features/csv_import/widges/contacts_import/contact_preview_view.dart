import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/models/csv_contact_row.dart';
import 'package:birdbreeder/features/csv_import/widges/contacts_import/contact_preview_actions.dart';
import 'package:birdbreeder/features/csv_import/widges/contacts_import/contact_preview_table.dart';
import 'package:birdbreeder/features/csv_import/widges/preview_header.dart';

class ContactPreviewView extends StatelessWidget {
  const ContactPreviewView({
    required this.fileName,
    required this.rows,
    required this.validRows,
    required this.invalidRows,
    required this.onBack,
    super.key,
  });

  final String fileName;
  final List<CsvContactRow> rows;
  final int validRows;
  final int invalidRows;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PreviewHeader(
          fileName: fileName,
          validRows: validRows,
          invalidRows: invalidRows,
        ),
        Expanded(
          child: ContactPreviewTable(rows: rows),
        ),
        ContactPreviewActions(
          validRows: validRows,
          onBack: onBack,
        ),
      ],
    );
  }
}
