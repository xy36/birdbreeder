import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_badge.dart';
import 'package:birdbreeder/shared/icons.dart';

class SectionCard extends StatefulWidget {
  const SectionCard({
    required this.icon,
    required this.title,
    required this.children,
    super.key,
    this.subtitle,
    this.trailing,
    this.footer,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    this.elevation = 2,
    this.collapsible = false,
    this.initiallyExpanded = true,
    this.errorCount, // null = no badge, 0 = green, >0 = red badge
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final List<Widget> children;
  final Widget? trailing;
  final Widget? footer;

  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final double elevation;

  final bool collapsible;
  final bool initiallyExpanded;

  /// When provided, shows a small badge. Use to surface validation errors per section.
  final int? errorCount;

  @override
  State<SectionCard> createState() => _SectionCardState();
}

class _SectionCardState extends State<SectionCard> {
  late bool _expanded = widget.initiallyExpanded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final showBadge = widget.errorCount != null;
    final hasErrors = (widget.errorCount ?? 0) > 0;

    return Card(
      margin: widget.margin,
      elevation: widget.elevation,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: widget.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    backgroundColor:
                        Theme.of(context).colorScheme.onSurface.withAlpha(30),
                    child: Icon(
                      widget.icon,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.title,
                              style: theme.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.w700),
                            ),
                          ),
                          if (showBadge)
                            SectionBadge(
                              count: widget.errorCount!,
                              danger: hasErrors,
                            ),
                          if (widget.trailing != null) ...[
                            const SizedBox(width: 8),
                            widget.trailing!,
                          ],
                          if (widget.collapsible) ...[
                            const SizedBox(width: 4),
                            IconButton(
                              visualDensity: VisualDensity.compact,
                              onPressed: () =>
                                  setState(() => _expanded = !_expanded),
                              icon: AnimatedRotation(
                                turns: _expanded ? 0.5 : 0.0,
                                duration: const Duration(milliseconds: 150),
                                child: const Icon(AppIcons.expand),
                              ),
                            ),
                          ],
                        ],
                      ),
                      if (widget.subtitle != null) ...[
                        Text(
                          widget.subtitle!,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.textTheme.bodyMedium?.color
                                ?.withValues(alpha: 0.7),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),

            // Body
            AnimatedCrossFade(
              crossFadeState: _expanded
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 160),
              firstChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  const Divider(height: 1),
                  const SizedBox(height: 12),
                  Column(
                    spacing: 16,
                    children: widget.children,
                  ),
                  if (widget.footer != null) ...[
                    const SizedBox(height: 12),
                    widget.footer!,
                  ],
                ],
              ),
              secondChild: const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
