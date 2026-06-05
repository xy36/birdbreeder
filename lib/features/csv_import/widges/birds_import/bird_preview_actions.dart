import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/cubit/csv_bird_import_cubit.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/shared/icons.dart';

class BirdPreviewActions extends StatelessWidget {
  const BirdPreviewActions({
    required this.validRows,
    required this.onBack,
    super.key,
  });

  final int validRows;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          OutlinedButton(
            onPressed: onBack,
            child: Text(t.csv_import.cancel),
          ),
          const SizedBox(width: 16),
          ElevatedButton.icon(
            onPressed: validRows > 0
                ? () {
                    context.read<CsvBirdImportCubit>().startImport();
                  }
                : null,
            icon: const Icon(AppIcons.importExport),
            label: Text(
              t.csv_import.birds.import_button(Count: validRows.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
