import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/models/csv_bird_row.dart';
import 'package:birdbreeder/features/csv_import/widges/birds_import/bird_preview_actions.dart';
import 'package:birdbreeder/features/csv_import/widges/birds_import/bird_preview_table.dart';
import 'package:birdbreeder/features/csv_import/widges/preview_header.dart';

class BirdPreviewView extends StatelessWidget {
  const BirdPreviewView({
    required this.fileName,
    required this.rows,
    required this.validRows,
    required this.invalidRows,
    required this.onBack,
    super.key,
  });

  final String fileName;
  final List<CsvBirdRow> rows;
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
          child: BirdPreviewTable(rows: rows),
        ),
        BirdPreviewActions(
          validRows: validRows,
          onBack: onBack,
        ),
      ],
    );
  }
}
