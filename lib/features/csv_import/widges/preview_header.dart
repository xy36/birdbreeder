import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/i18n/translations.g.dart';

class PreviewHeader extends StatelessWidget {
  const PreviewHeader({
    required this.fileName,
    required this.validRows,
    required this.invalidRows,
    super.key,
  });

  final String fileName;
  final int validRows;
  final int invalidRows;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(Icons.description),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              fileName,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          _StatChip(
            label: t.csv_import.preview.valid(Count: validRows.toString()),
            color: Colors.green,
          ),
          const SizedBox(width: 8),
          if (invalidRows > 0)
            _StatChip(
              label:
                  t.csv_import.preview.invalid(Count: invalidRows.toString()),
              color: Colors.orange,
            ),
        ],
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({
    required this.label,
    required this.color,
  });

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: color.withValues(alpha: 0.2),
      labelStyle: TextStyle(color: color),
    );
  }
}
