import 'package:birdbreeder/common_imports.dart';

class SharedLoadingWidget extends StatelessWidget {
  const SharedLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
