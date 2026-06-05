import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_overview_ui.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/icons.dart';

class ColorRow extends StatelessWidget {
  const ColorRow({
    required this.color,
    required this.swatch,
    required this.usage,
    required this.last,
    required this.onTap,
    super.key,
  });

  final BirdColor color;
  final Color swatch;
  final int usage;
  final bool last;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return OverviewRow(
      onTap: onTap,
      last: last,
      leading: Stack(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: swatch,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: cs.outline, width: 1.5),
            ),
          ),
          Positioned(
            top: 6,
            left: 6,
            child: Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.35),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      title: Text(color.name ?? '—'),
      subtitle: (color.hex != null && color.hex!.isNotEmpty)
          ? Text(
              color.hex!.toUpperCase(),
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: cs.onSurfaceVariant,
                letterSpacing: 0.3,
              ),
            )
          : null,
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
        decoration: BoxDecoration(
          color: usage > 0 ? cs.tertiaryContainer : cs.surfaceContainer,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              AppIcons.pets,
              size: 11,
              color: usage > 0 ? cs.tertiary : cs.outline,
            ),
            const SizedBox(width: 4),
            Text(
              '$usage',
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.3,
                color: usage > 0 ? cs.onTertiaryContainer : cs.outline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
