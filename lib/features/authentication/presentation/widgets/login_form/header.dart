import 'package:birdbreeder/common_imports.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text(
              context.l10n.login__welcome_text,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              context.l10n.app_title,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          context.l10n.login__welcome_sub_text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
