import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/csv_import_screen.dart';
import 'package:birdbreeder/features/csv_import/widges/import_type_card.dart';
import 'package:birdbreeder/i18n/translations.g.dart';

/// Initial type selection widget
class ImportTypeSelector extends StatelessWidget {
  const ImportTypeSelector({required this.onSelect, super.key});

  final void Function(CsvImportType) onSelect;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.upload_file,
                size: 80,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(height: 24),
              Text(
                t.csv_import.title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                t.csv_import.select_type,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImportTypeCard(
                    icon: Icons.flutter_dash,
                    title: t.csv_import.birds.title,
                    description: t.csv_import.birds.description,
                    onTap: () => onSelect(CsvImportType.birds),
                  ),
                  ImportTypeCard(
                    icon: Icons.contacts,
                    title: t.csv_import.contacts.title,
                    description: t.csv_import.contacts.description,
                    onTap: () => onSelect(CsvImportType.contacts),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
