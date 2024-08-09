import 'package:birdbreeder/common_imports.dart';

class SharedErrorWidget extends StatelessWidget {
  const SharedErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.l10n.error__message),
    );
  }
}
