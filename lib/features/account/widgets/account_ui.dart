import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Shared visual primitives for the redesigned account screen: uppercase
/// section labels, bordered cards, icon-badge rows and info strips. Colors come
/// from the app [ColorScheme] so the layout inherits the app theme.

/// Uppercase section header with a leading icon.
class AccountSectionLabel extends StatelessWidget {
  const AccountSectionLabel({
    required this.icon,
    required this.label,
    super.key,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurfaceVariant;
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 8),
      child: Row(
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 6),
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.1,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

/// Bordered, rounded surface card wrapping settings rows.
class AccountCard extends StatelessWidget {
  const AccountCard({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: child,
    );
  }
}

/// Rounded square icon badge used at the start of a settings row.
class AccountIconBadge extends StatelessWidget {
  const AccountIconBadge({
    required this.icon,
    this.background,
    this.foreground,
    super.key,
  });

  final IconData icon;
  final Color? background;
  final Color? foreground;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        color: background ?? scheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, size: 19, color: foreground ?? scheme.onSurfaceVariant),
    );
  }
}

/// A settings row: icon badge, title + optional subtitle, optional trailing.
class AccountRow extends StatelessWidget {
  const AccountRow({
    required this.title,
    this.badge,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.showDivider = false,
    super.key,
  });

  final String title;
  final Widget? badge;
  final Widget? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final row = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      child: Row(
        children: [
          if (badge != null) ...[badge!, const SizedBox(width: 12)],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: 2),
                  DefaultTextStyle.merge(
                    style: TextStyle(
                      fontSize: 11.5,
                      color: scheme.onSurfaceVariant,
                    ),
                    child: subtitle!,
                  ),
                ],
              ],
            ),
          ),
          if (trailing != null) ...[const SizedBox(width: 12), trailing!],
        ],
      ),
    );
    return Column(
      children: [
        if (onTap != null) InkWell(onTap: onTap, child: row) else row,
        if (showDivider)
          Divider(height: 1, thickness: 1, color: scheme.outlineVariant),
      ],
    );
  }
}

/// A subtle info line (small icon + muted text) below a button.
class AccountInfoStrip extends StatelessWidget {
  const AccountInfoStrip({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurfaceVariant;
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(AppIcons.infoOutline, size: 13, color: color),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 11.5, color: color, height: 1.35),
            ),
          ),
        ],
      ),
    );
  }
}
