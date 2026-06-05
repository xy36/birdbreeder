import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/sex_chip.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Reused row in resource detail pages (cage / color / species) showing a
/// bird via [SexChip] + ring number. Taps push the bird detail route.
class ResourceBirdRow extends StatelessWidget {
  const ResourceBirdRow({
    required this.bird,
    required this.last,
    super.key,
    this.onTap,
  });

  final Bird bird;
  final bool last;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap ?? () => context.pushRoute(BirdRoute(bird: bird)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          border: last
              ? null
              : Border(bottom: BorderSide(color: cs.outlineVariant)),
        ),
        child: Row(
          children: [
            SexChip(sex: bird.sex),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bird.ringNumber ?? '—',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: cs.onSurface,
                    ),
                  ),
                  Text(
                    [bird.speciesResolved?.name, bird.colorResolved?.name]
                        .whereNotNull()
                        .join(' · '),
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: cs.onSurface,
                    ),
                  ),
                ],
              ),
            ),
            Icon(AppIcons.chevronRight, size: 18, color: cs.onSurfaceVariant),
          ],
        ),
      ),
    );
  }
}
