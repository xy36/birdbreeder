import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Shared building blocks for resource Detail + Edit screens.
///
/// Mirrors the design language from "Resource Detail Pages.html":
/// App bar with main + sub title, sticky stats strip, hero block,
/// section label rows, action row, save bar.
class ResourceScaffold extends StatelessWidget {
  const ResourceScaffold({
    required this.titleMain,
    required this.titleSub,
    required this.body,
    super.key,
    this.leadingIcon = AppIcons.arrowBack,
    this.onLeading,
    this.trailingIcon = AppIcons.more,
    this.onTrailing,
    this.trailingColor,
    this.bottomBar,
  });

  final String titleMain;
  final String titleSub;
  final IconData leadingIcon;
  final VoidCallback? onLeading;
  final IconData trailingIcon;
  final VoidCallback? onTrailing;
  final Color? trailingColor;
  final Widget body;
  final Widget? bottomBar;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: cs.surfaceContainerLowest,
      body: SafeArea(
        child: Column(
          children: [
            _AppBar(
              leadingIcon: leadingIcon,
              onLeading: onLeading ?? () => Navigator.maybeOf(context)?.pop(),
              trailingIcon: trailingIcon,
              onTrailing: onTrailing,
              trailingColor: trailingColor,
              titleMain: titleMain,
              titleSub: titleSub,
            ),
            Expanded(child: body),
            if (bottomBar != null) bottomBar!,
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    required this.leadingIcon,
    required this.onLeading,
    required this.trailingIcon,
    required this.onTrailing,
    required this.trailingColor,
    required this.titleMain,
    required this.titleSub,
  });

  final IconData leadingIcon;
  final VoidCallback onLeading;
  final IconData trailingIcon;
  final VoidCallback? onTrailing;
  final Color? trailingColor;
  final String titleMain;
  final String titleSub;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SizedBox(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          children: [
            IconButton(onPressed: onLeading, icon: Icon(leadingIcon)),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    titleMain,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.1,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (titleSub.isNotEmpty)
                    Text(
                      titleSub,
                      style: TextStyle(
                        fontSize: 11,
                        color: cs.onSurfaceVariant,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.3,
                        fontFamily: 'monospace',
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            if (onTrailing != null)
              IconButton(
                onPressed: onTrailing,
                icon: Icon(trailingIcon, color: trailingColor),
              ),
          ],
        ),
      ),
    );
  }
}

class StatsStrip extends StatelessWidget {
  const StatsStrip({required this.cells, super.key});

  final List<StatCell> cells;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: cs.outlineVariant),
          bottom: BorderSide(color: cs.outlineVariant),
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            for (var i = 0; i < cells.length; i++) ...[
              Expanded(child: cells[i]),
              if (i != cells.length - 1)
                VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: cs.outlineVariant,
                ),
            ],
          ],
        ),
      ),
    );
  }
}

class StatCell extends StatelessWidget {
  const StatCell({
    required this.value,
    required this.label,
    this.color,
    super.key,
  });

  final String value;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      color: cs.surface,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: color ?? cs.onSurface,
              letterSpacing: 0.3,
              height: 1.1,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              color: cs.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SectionLabel extends StatelessWidget {
  const SectionLabel({
    required this.icon,
    required this.label,
    super.key,
    this.count,
    this.action,
    this.onAction,
  });

  final IconData icon;
  final String label;
  final int? count;
  final String? action;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 14, 4, 8),
      child: Row(
        children: [
          Icon(icon, size: 12, color: cs.onSurfaceVariant),
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
          if (count != null) ...[
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
          ] else
            const Spacer(),
          if (action != null)
            GestureDetector(
              onTap: onAction,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  '$action ›',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: cs.primary,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class NotesCard extends StatelessWidget {
  const NotesCard({required this.text, super.key});

  final String? text;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final hasText = text != null && text!.trim().isNotEmpty;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: cs.outlineVariant,
          style: hasText ? BorderStyle.solid : BorderStyle.solid,
        ),
      ),
      child: Text(
        hasText ? text! : '—',
        style: TextStyle(
          fontSize: 13,
          color: hasText ? cs.onSurface : cs.onSurfaceVariant,
          fontStyle: hasText ? FontStyle.normal : FontStyle.italic,
          height: 1.5,
        ),
      ),
    );
  }
}

class DetailActionRow extends StatelessWidget {
  const DetailActionRow({
    required this.onEdit,
    super.key,
    this.secondaryIcon,
    this.onSecondary,
  });

  final VoidCallback onEdit;
  final IconData? secondaryIcon;
  final VoidCallback? onSecondary;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 14, 4, 6),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 48,
              child: FilledButton.icon(
                onPressed: onEdit,
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                icon: const Icon(AppIcons.edit, size: 18),
                label: Text(context.tr.resources.actions.edit),
              ),
            ),
          ),
          if (secondaryIcon != null) ...[
            const SizedBox(width: 8),
            _IconBtn(
              icon: secondaryIcon!,
              onTap: onSecondary,
              iconColor: Theme.of(context).colorScheme.onSurface,
              mutedBorder: true,
            ),
          ],
        ],
      ),
    );
  }
}

class _IconBtn extends StatelessWidget {
  const _IconBtn({
    required this.icon,
    required this.onTap,
    required this.iconColor,
    required this.mutedBorder,
  });

  final IconData icon;
  final VoidCallback? onTap;
  final bool mutedBorder;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: cs.surface,
          shape: BoxShape.circle,
          border: Border.all(
            color: mutedBorder ? cs.outlineVariant : cs.outline,
          ),
        ),
        alignment: Alignment.center,
        child: Icon(icon, size: 20, color: iconColor ?? cs.onSurface),
      ),
    );
  }
}
