import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Profile hero showing the contact flagged as the app user (`isAppUser`).
class ProfileHeroCard extends StatelessWidget {
  const ProfileHeroCard({super.key});

  Contact? get _appUser =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.contacts.appUser;

  String _initials(Contact? c) {
    final first = c?.firstName?.trim();
    final last = c?.lastName?.trim();
    final a = (first != null && first.isNotEmpty) ? first[0] : '';
    final b = (last != null && last.isNotEmpty) ? last[0] : '';
    final combined = '$a$b'.toUpperCase();
    return combined.isEmpty ? '–' : combined;
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);
    final tr = context.tr.account.profile;
    final user = _appUser;
    final name = user?.fullName ?? '';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Row(
        children: [
          Container(
            width: 56,
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: scheme.primary,
              shape: BoxShape.circle,
            ),
            child: Text(
              _initials(user),
              style: TextStyle(
                color: scheme.onPrimary,
                fontSize: 19,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.3,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  name.isEmpty ? tr.no_contact : name,
                  style: theme.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.w700),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                if (user?.number != null) ...[
                  const SizedBox(height: 2),
                  Text(
                    tr.breeder_number(Value: user!.number!),
                    style: theme.textTheme.bodySmall
                        ?.copyWith(color: scheme.onSurfaceVariant),
                  ),
                ],
                if (user?.email != null && user!.email!.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(
                    user.email!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                      fontFeatures: const [],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          if (user != null) ...[
            const SizedBox(width: 8),
            IconButton.filledTonal(
              icon: const Icon(AppIcons.edit, size: 18),
              tooltip: tr.edit,
              onPressed: () => context.router.push(
                ContactDetailsRoute(initialContact: user),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
