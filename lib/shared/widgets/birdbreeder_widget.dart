import 'package:birdbreeder/common_imports.dart';

class BirdbreederWidget extends StatelessWidget {
  const BirdbreederWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      context.tr.app.title,
      style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
