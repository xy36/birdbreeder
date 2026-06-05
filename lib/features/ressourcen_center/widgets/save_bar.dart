import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

class SaveBar extends StatelessWidget {
  const SaveBar({
    required this.onCancel,
    required this.onSave,
    super.key,
    this.saveEnabled = true,
  });

  final VoidCallback onCancel;
  final VoidCallback? onSave;
  final bool saveEnabled;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      height: 56,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          TextButton(
            onPressed: onCancel,
            style: TextButton.styleFrom(
              foregroundColor: cs.onSurfaceVariant,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 18),
              minimumSize: const Size(0, 44),
            ),
            child: Text(context.tr.common.cancel),
          ),
          Expanded(
            child: FilledButton.icon(
              onPressed: saveEnabled ? onSave : null,
              style: FilledButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
                minimumSize: const Size(0, 44),
              ),
              icon: const Icon(AppIcons.accept, size: 18),
              label: Text(context.tr.common.save),
            ),
          ),
        ],
      ),
    );
  }
}
