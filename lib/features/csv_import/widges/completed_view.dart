import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/models/csv_import_result.dart';
import 'package:birdbreeder/features/csv_import/widges/failed_imports_list.dart';
import 'package:birdbreeder/features/csv_import/widges/summary_card.dart';
import 'package:birdbreeder/i18n/translations.g.dart';

class CompletedView extends StatelessWidget {
  const CompletedView({
    required this.summary,
    required this.onReset,
    required this.showResourceStats,
    super.key,
  });

  final CsvImportSummary summary;
  final VoidCallback onReset;
  final bool showResourceStats;

  @override
  Widget build(BuildContext context) {
    final failedResults = summary.results
        .where((r) => !r.success && !r.skipped && r.errorMessage != null)
        .toList();
    final skippedResults = summary.results.where((r) => r.skipped).toList();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Icon(
              summary.failedImports == 0 ? Icons.check_circle : Icons.info,
              size: 80,
              color: summary.failedImports == 0 ? Colors.green : Colors.orange,
            ),
            const SizedBox(height: 24),
            Text(
              t.csv_import.completed,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            SummaryCard(
              summary: summary,
              showResourceStats: showResourceStats,
            ),
            if (failedResults.isNotEmpty) ...[
              const SizedBox(height: 24),
              FailedImportsList(
                title: t.csv_import.summary.failed_imports,
                results: failedResults,
                icon: Icons.error,
                iconColor: Colors.red,
              ),
            ],
            if (skippedResults.isNotEmpty) ...[
              const SizedBox(height: 16),
              FailedImportsList(
                title: t.csv_import.summary.skipped_entries,
                results: skippedResults,
                icon: Icons.warning,
                iconColor: Colors.orange,
              ),
            ],
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: onReset,
              icon: const Icon(Icons.refresh),
              label: Text(t.csv_import.new_import),
            ),
          ],
        ),
      ),
    );
  }
}
