import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

class Stepper2 extends StatelessWidget {
  const Stepper2({
    required this.value,
    required this.onChanged,
    required this.unit,
    super.key,
    this.min = 0,
    this.max = 999,
    this.startValue = 1,
  });

  /// Current value, or null when nothing is set yet — rendered as a dash so
  /// "unknown" stays distinguishable from a deliberate zero.
  final int? value;
  final ValueChanged<int> onChanged;
  final String unit;
  final int min;
  final int max;

  /// Value the first tap on "+" jumps to while [value] is null.
  final int startValue;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final current = value;
    return Container(
      height: 48,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: cs.surface,
        border: Border.all(color: cs.outlineVariant, width: 1.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          _StepBtn(
            icon: AppIcons.removeIcon,
            onTap: current == null ? null : () => onChanged(current - 1),
          ),
          Expanded(
            child: Center(
              child: Text(
                current == null ? '—' : '$current',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: current == null ? cs.onSurfaceVariant : cs.onSurface,
                  letterSpacing: 0.3,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              unit,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: cs.onSurfaceVariant,
                letterSpacing: 0.3,
              ),
            ),
          ),
          _StepBtn(
            icon: AppIcons.add,
            onTap: () => onChanged(current == null ? startValue : current + 1),
          ),
        ],
      ),
    );
  }
}

class _StepBtn extends StatelessWidget {
  const _StepBtn({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: cs.surfaceContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Icon(
          icon,
          size: 20,
          color: onTap == null ? cs.onSurfaceVariant : cs.onSurface,
        ),
      ),
    );
  }
}
