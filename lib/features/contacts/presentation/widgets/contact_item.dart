import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.contact,
    this.onTap,
    this.onEdit,
    this.onDelete,
    this.elevation = 1,
    this.compact = false,
  });

  final Contact contact;
  final VoidCallback? onTap;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  final double elevation;
  final bool compact;

  Future<void> emailTo(String address) async {
    final uri = Uri(scheme: 'mailto', path: address);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> openWebsite(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> callTo(String number) async {
    final uri = Uri(scheme: 'tel', path: number);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final l10n = context.l10n;

    final locationText = _joinNonEmpty([contact.city, contact.country], ' • ');

    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Card(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.dividerColor.withValues(alpha: 0.3),
            width: 0.8,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.all(compact ? 10 : 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header row: avatar + name + menu / selection
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _Avatar(
                    size: compact ? 36 : 44,
                    name: contact.displayName,
                    color: cs.primary,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name + Updated badge inline
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                contact.displayName,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: context.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            if (contact.number != null &&
                                contact.number!.isNotEmpty)
                              Text(
                                '#${contact.number!}',
                              ),
                          ],
                        ),
                        if (locationText != null) ...[
                          const SizedBox(height: 2),
                          Text(
                            locationText,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.bodySmall?.copyWith(
                              color: context.bodySmall?.color
                                  ?.withValues(alpha: 0.75),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),

              // Tags
              // if (contact.tags.isNotEmpty) ...[
              //   const SizedBox(height: 8),
              //   Wrap(
              //     spacing: 6,
              //     runSpacing: 6,
              //     children: contact.tags.take(6).map((t) {
              //       return Container(
              //         padding: const EdgeInsets.symmetric(
              //           horizontal: 8,
              //           vertical: 4,
              //         ),
              //         decoration: BoxDecoration(
              //           color: cs.secondaryContainer,
              //           borderRadius: BorderRadius.circular(999),
              //         ),
              //         child: Text(
              //           t,
              //           style: theme.textTheme.labelSmall?.copyWith(
              //             color: cs.onSecondaryContainer,
              //           ),
              //         ),
              //       );
              //     }).toList(),
              //   ),
              // ],

              // Actions
              const SizedBox(height: 10),
              Row(
                spacing: 8,
                children: [
                  _ActionIconButton(
                    tooltip: l10n.contacts__action_button_call_tooltip,
                    icon: Icons.call_outlined,
                    enabled: (contact.phone != null &&
                        contact.phone!.trim().isNotEmpty),
                    onPressed: (contact.phone != null &&
                            contact.phone!.trim().isNotEmpty)
                        ? () => callTo(contact.phone!)
                        : null,
                  ),
                  _ActionIconButton(
                    tooltip: l10n.contacts__action_button_email_tooltip,
                    icon: Icons.alternate_email,
                    enabled: (contact.email != null &&
                        contact.email!.trim().isNotEmpty),
                    onPressed: (contact.email != null &&
                            contact.email!.trim().isNotEmpty)
                        ? () => emailTo(contact.email!)
                        : null,
                  ),
                  _ActionIconButton(
                    tooltip: l10n.contacts__action_button_website_tooltip,
                    icon: Icons.public,
                    enabled: (contact.website != null &&
                        contact.website!.trim().isNotEmpty),
                    onPressed: (contact.website != null &&
                            contact.website!.trim().isNotEmpty)
                        ? () => openWebsite(contact.website!)
                        : null,
                  ),
                  const Spacer(),
                  _StatPill(
                    icon: Icons.sell,
                    label: '${contact.birdsSoldCount}',
                  ),
                  _StatPill(
                    icon: Icons.shopping_bag,
                    label: '${contact.birdsBoughtCount}',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _joinNonEmpty(List<String?> parts, String sep) {
    final p = parts
        .where((e) => e != null && e.trim().isNotEmpty)
        .cast<String>()
        .toList();
    return p.isEmpty ? null : p.join(sep);
  }

  String _formatRelative(BuildContext context, DateTime dt) {
    final now = DateTime.now();
    final diff = now.difference(dt);
    if (diff.inMinutes < 1) return 'gerade eben';
    if (diff.inMinutes < 60) return 'vor ${diff.inMinutes} min';
    if (diff.inHours < 24) return 'vor ${diff.inHours} h';
    if (diff.inDays < 7) return 'vor ${diff.inDays} Tagen';
    // fallback to date
    return '${dt.day.toString().padLeft(2, '0')}.${dt.month.toString().padLeft(2, '0')}.${dt.year}';
  }
}

class _ActionIconButton extends StatelessWidget {
  const _ActionIconButton({
    required this.icon,
    required this.onPressed,
    this.enabled = true,
    required this.tooltip,
  });
  final IconData icon;
  final VoidCallback? onPressed;
  final bool enabled;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: IconButton(
        onPressed: enabled ? onPressed : null,
        icon: Icon(
          icon,
          color: enabled ? Theme.of(context).colorScheme.primary : Colors.grey,
        ),
      ),
    );
  }
}

class _StatPill extends StatelessWidget {
  const _StatPill({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: cs.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: cs.onSurfaceVariant),
          const SizedBox(width: 4),
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: cs.onSurfaceVariant),
          ),
        ],
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    required this.size,
    required this.name,
    this.color,
  });
  final double size;
  final String name;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final initials = _initialsOf(name);
    final cs = Theme.of(context).colorScheme;
    final bg =
        color?.withValues(alpha: 0.1) ?? cs.primary.withValues(alpha: 0.1);
    final fg = color ?? cs.primary;

    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: Container(
        width: size,
        height: size,
        color: bg,
        child: Center(
          child: Text(
            initials,
            style: context.labelLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: fg,
            ),
          ),
        ),
      ),
    );
  }

  String _initialsOf(String s) {
    final parts = s.trim().split(RegExp(r'\s+'));
    final chars = parts.take(2).map((e) => e.isNotEmpty ? e[0] : '').join();
    return chars.toUpperCase();
  }
}
