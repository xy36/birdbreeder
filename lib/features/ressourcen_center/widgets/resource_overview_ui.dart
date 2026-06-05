import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bottom_search_bar.dart';

/// Sticky summary chrome reused across resource overview pages.
class OverviewSummary extends StatelessWidget {
  const OverviewSummary({
    required this.total,
    required this.label,
    super.key,
    this.meta,
    this.bottom,
    this.chips,
    this.trailing,
  });

  final int total;
  final String label;
  final String? meta;
  final Widget? bottom;
  final List<OverviewChipData>? chips;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Material(
      color: cs.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 8, 14, 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$total',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: cs.onSurface,
                    height: 1,
                  ),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    label,
                    style: TextStyle(
                      fontSize: 12,
                      color: cs.onSurfaceVariant,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Spacer(),
                if (meta != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3, right: 8),
                    child: Text(
                      meta!,
                      style: TextStyle(
                        fontSize: 11,
                        color: cs.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                if (trailing != null) trailing!,
              ],
            ),
          ),
          if (bottom != null) bottom!,
          if (chips != null && chips!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 30,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: chips!.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 6),
                  itemBuilder: (_, i) => OverviewChip(data: chips![i]),
                ),
              ),
            ),
          Container(height: 1, color: cs.outlineVariant),
        ],
      ),
    );
  }
}

class OverviewChipData {
  const OverviewChipData({
    required this.label,
    required this.count,
    required this.active,
    required this.onTap,
    this.icon,
  });

  final String label;
  final int count;
  final bool active;
  final IconData? icon;
  final VoidCallback onTap;
}

class OverviewChip extends StatelessWidget {
  const OverviewChip({required this.data, super.key});

  final OverviewChipData data;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final fg = data.active ? cs.onPrimary : cs.onSurfaceVariant;
    final bg = data.active ? cs.primary : cs.surfaceContainer;
    final countBg = data.active
        ? Colors.white.withValues(alpha: 0.18)
        : cs.surfaceContainerHighest;
    return InkWell(
      onTap: data.onTap,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(100),
          border: data.active ? null : Border.all(color: cs.outlineVariant),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (data.icon != null) ...[
              Icon(data.icon, size: 13, color: fg),
              const SizedBox(width: 5),
            ],
            Text(
              data.label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.3,
                color: fg,
              ),
            ),
            const SizedBox(width: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: countBg,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                '${data.count}',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.w700,
                  fontSize: 11,
                  color: fg,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Group label above a list section.
class GroupLabel extends StatelessWidget {
  const GroupLabel({
    required this.icon,
    required this.label,
    required this.count,
    super.key,
    this.iconColor,
  });

  final IconData icon;
  final String label;
  final int count;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 12, 4, 6),
      child: Row(
        children: [
          Icon(icon, size: 12, color: iconColor ?? cs.onSurfaceVariant),
          const SizedBox(width: 6),
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: cs.onSurfaceVariant,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
            decoration: BoxDecoration(
              color: cs.surfaceContainer,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              '$count',
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: cs.onSurface,
                letterSpacing: 0.3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GroupedList extends StatelessWidget {
  const GroupedList({required this.children, super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: cs.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(children: children),
    );
  }
}

class OverviewRow extends StatelessWidget {
  const OverviewRow({
    required this.leading,
    required this.title,
    required this.trailing,
    super.key,
    this.subtitle,
    this.last = false,
    this.onTap,
  });

  final Widget leading;
  final Widget title;
  final Widget? subtitle;
  final Widget trailing;
  final bool last;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          border: last
              ? null
              : Border(bottom: BorderSide(color: cs.outlineVariant)),
        ),
        child: Row(
          children: [
            leading,
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle.merge(
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: cs.onSurface,
                      letterSpacing: 0.1,
                    ),
                    child: title,
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 2),
                    DefaultTextStyle.merge(
                      style: TextStyle(
                        fontSize: 11,
                        color: cs.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                      ),
                      child: subtitle!,
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 8),
            trailing,
            const SizedBox(width: 4),
            Icon(AppIcons.chevronRight, size: 18, color: cs.onSurfaceVariant),
          ],
        ),
      ),
    );
  }
}

class OverviewBottomBar extends StatelessWidget {
  const OverviewBottomBar({
    required this.onSearch,
    required this.onAdd,
    super.key,
  });

  final ValueChanged<String> onSearch;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, right: 16),
      child: BottomSearchBar(onSearch: onSearch, onAdd: onAdd),
    );
  }
}

/// Layout: sticky summary on top, scrollable body, floating bottom bar.
class OverviewScaffoldBody extends StatelessWidget {
  const OverviewScaffoldBody({
    required this.summary,
    required this.bodyChildren,
    required this.bottomBar,
    super.key,
  });

  final Widget summary;
  final List<Widget> bodyChildren;
  final Widget bottomBar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            summary,
            Expanded(
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 100),
                children: bodyChildren,
              ),
            ),
          ],
        ),
        Positioned(left: 0, right: 0, bottom: 0, child: bottomBar),
      ],
    );
  }
}
