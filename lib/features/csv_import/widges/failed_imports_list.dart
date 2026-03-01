import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/models/csv_import_result.dart';
import 'package:birdbreeder/i18n/translations.g.dart';

class FailedImportsList extends StatelessWidget {
  const FailedImportsList({
    required this.title,
    required this.results,
    required this.icon,
    required this.iconColor,
    super.key,
  });

  final String title;
  final List<CsvImportResult> results;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        leading: Icon(icon, color: iconColor),
        title: Text('$title (${results.length})'),
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 300),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: results.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final result = results[index];
                return ListTile(
                  dense: true,
                  leading: Text(
                    '#${result.rowIndex}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    result.ringNumber.isNotEmpty
                        ? result.ringNumber
                        : t.csv_import.status.no_ring_number,
                  ),
                  subtitle: result.errorMessage != null
                      ? Text(
                          result.errorMessage!,
                          style: TextStyle(color: iconColor, fontSize: 12),
                        )
                      : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
