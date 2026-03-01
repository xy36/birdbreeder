import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/cubit/csv_contact_import_cubit.dart';
import 'package:birdbreeder/i18n/translations.g.dart';

class ContactPreviewActions extends StatelessWidget {
  const ContactPreviewActions({
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
                    context.read<CsvContactImportCubit>().startImport();
                  }
                : null,
            icon: const Icon(Icons.import_export),
            label: Text(
              t.csv_import.contacts.import_button(Count: validRows.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
