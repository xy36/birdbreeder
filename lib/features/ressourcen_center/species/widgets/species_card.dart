import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/species/widgets/species_avatar.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/theme/app_colors.dart';

/// Compact warning chip shown only for endangered species — an unmarked card
/// simply is not endangered, the explicit status lives on the detail page.
class _EndangeredChip extends StatelessWidget {
  const _EndangeredChip();

  @override
  Widget build(BuildContext context) {
    final warn = context.appColors.statusWarning;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: warn.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: warn.withValues(alpha: 0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(AppIcons.warning, size: 11, color: warn),
          const SizedBox(width: 4),
          Text(
            context.tr.species.endangered,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: warn,
            ),
          ),
        ],
      ),
    );
  }
}

class SpeciesCard extends StatelessWidget {
  const SpeciesCard({
    required this.species,
    required this.birds,
    required this.onTap,
    super.key,
  });

  final Species species;
  final int birds;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final incub = species.incubationDays ?? 0;
    final fledge = species.fledgeDays ?? 0;
    final total = incub + fledge;
    return Material(
      color: cs.surface,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: cs.outlineVariant),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SpeciesAvatar(
                    imageUrl: species.imageUrl,
                    name: species.name,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          species.name ?? '—',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: cs.onSurface,
                            letterSpacing: 0.1,
                          ),
                        ),
                        if (species.latName != null &&
                            species.latName!.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              species.latName!,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 11,
                                color: cs.onSurfaceVariant,
                              ),
                            ),
                          ),
                        if (species.endangered)
                          const Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: _EndangeredChip(),
                          ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '$birds',
                        style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: cs.tertiary,
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        context.tr.cages.units.birds.toUpperCase(),
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.8,
                          color: cs.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              if (total > 0) ...[
                const SizedBox(height: 12),
                Row(
                  children: [
                    Icon(
                      AppIcons.scheduleOutlined,
                      size: 11,
                      color: cs.onSurfaceVariant,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      context.tr.species.section.lifecycle.toUpperCase(),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8,
                        color: cs.onSurfaceVariant,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      context.tr.species.lifecycle_total(Days: total),
                      style: TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: cs.onSurface,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: SizedBox(
                    height: 24,
                    child: Row(
                      children: [
                        Expanded(
                          flex: incub,
                          child: Container(
                            color: context.appColors.sexFemale.withValues(
                              alpha: 0.18,
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  AppIcons.egg,
                                  size: 11,
                                  color: context.appColors.sexFemale,
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  '${incub}T',
                                  style: TextStyle(
                                    fontFamily: 'monospace',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: context.appColors.sexFemale,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: fledge,
                          child: Container(
                            color: cs.tertiaryContainer,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  AppIcons.pets,
                                  size: 11,
                                  color: cs.onTertiaryContainer,
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  '${fledge}T',
                                  style: TextStyle(
                                    fontFamily: 'monospace',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                    color: cs.onTertiaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
