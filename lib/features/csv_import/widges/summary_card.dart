import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/models/csv_import_result.dart';
import 'package:birdbreeder/features/csv_import/widges/summary_row.dart';
import 'package:birdbreeder/i18n/translations.g.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({
    required this.summary,
    required this.showResourceStats,
    super.key,
  });

  final CsvImportSummary summary;
  final bool showResourceStats;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SummaryRow(
              label: t.csv_import.summary.successful,
              value: '${summary.successfulImports}',
              color: Colors.green,
            ),
            if (summary.failedImports > 0)
              SummaryRow(
                label: t.csv_import.summary.failed,
                value: '${summary.failedImports}',
                color: Colors.red,
              ),
            if (summary.skippedDuplicates > 0)
              SummaryRow(
                label: t.csv_import.summary.skipped_duplicates,
                value: '${summary.skippedDuplicates}',
                color: Colors.orange,
              ),
            if (summary.skippedRows > 0)
              SummaryRow(
                label: t.csv_import.summary.skipped_invalid,
                value: '${summary.skippedRows}',
                color: Colors.orange,
              ),
            if (showResourceStats) ...[
              const Divider(),
              if (summary.speciesCreated > 0)
                SummaryRow(
                  label: t.csv_import.summary.species_created,
                  value: '${summary.speciesCreated}',
                  color: Colors.blue,
                ),
              if (summary.colorsCreated > 0)
                SummaryRow(
                  label: t.csv_import.summary.colors_created,
                  value: '${summary.colorsCreated}',
                  color: Colors.blue,
                ),
              if (summary.cagesCreated > 0)
                SummaryRow(
                  label: t.csv_import.summary.cages_created,
                  value: '${summary.cagesCreated}',
                  color: Colors.blue,
                ),
            ],
          ],
        ),
      ),
    );
  }
}
