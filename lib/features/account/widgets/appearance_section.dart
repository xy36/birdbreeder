import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/cubits/theme_cubit/theme_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Theme-mode picker rendered as three stacked-icon cards on a rounded track.
///
/// The selected card is lifted with a soft shadow; the others sit flat and
/// muted. Reads and updates the app-wide [ThemeCubit].
class AppearanceSection extends StatelessWidget {
  const AppearanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.account.appearance;
    final scheme = Theme.of(context).colorScheme;

    final modes = <(ThemeMode, IconData, String)>[
      (ThemeMode.system, AppIcons.systemMode, tr.system),
      (ThemeMode.light, AppIcons.lightMode, tr.light),
      (ThemeMode.dark, AppIcons.darkMode, tr.dark),
    ];

    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, mode) {
        return Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: scheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              for (final (value, icon, label) in modes)
                Expanded(
                  child: _ModeSegment(
                    icon: icon,
                    label: label,
                    selected: value == mode,
                    onTap: () => context.read<ThemeCubit>().setMode(value),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

/// A single stacked-icon card within [AppearanceSection].
class _ModeSegment extends StatelessWidget {
  const _ModeSegment({
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final color = selected ? scheme.onSurface : scheme.onSurfaceVariant;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: selected ? scheme.primaryContainer : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.10),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 20, color: color),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 12.5,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
