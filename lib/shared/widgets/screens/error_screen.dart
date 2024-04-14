import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/app_bar_with_drawer.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithDrawer(
        title: title,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.l10n.error__message,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
