import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/i18n/translations.g.dart';

class ImportingView extends StatelessWidget {
  const ImportingView({
    required this.currentIndex,
    required this.totalRows,
    required this.itemName,
    super.key,
  });

  final int currentIndex;
  final int totalRows;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    final progress = totalRows > 0 ? currentIndex / totalRows : 0.0;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(value: progress),
          const SizedBox(height: 24),
          Text(
            t.csv_import.importing(ItemName: itemName),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            t.csv_import.progress(
              Current: currentIndex.toString(),
              Total: totalRows.toString(),
            ),
          ),
          const SizedBox(height: 16),
          LinearProgressIndicator(value: progress),
        ],
      ),
    );
  }
}
