import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

class AppUserCard extends StatelessWidget {
  const AppUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    final appUser =
        s1.get<BirdBreederCubit>().state.birdBreederResources.contacts.appUser;

    final capitalizeName = appUser?.firstName?.capitalizeFirst[0] ?? 'A';
    final capitalizeSurname = appUser?.lastName?.capitalizeFirst[0] ?? 'N';
    final breederNumber = appUser?.number ?? '—';

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: scheme.primaryContainer,
              child: Text(
                '$capitalizeName$capitalizeSurname',
                style: TextStyle(color: scheme.onPrimaryContainer),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  [appUser?.firstName, appUser?.lastName]
                      .whereNotNull()
                      .join(' ')
                      .ifIsEmpty('?'),
                  style:
                      context.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Züchternummer $breederNumber',
                  style: context.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
