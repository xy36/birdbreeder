import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/birdbreeder_widget.dart';

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
              context.tr.login.welcome.text,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const BirdbreederWidget(),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          context.tr.login.welcome.sub_text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
