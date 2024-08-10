import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/gen/assets.gen.dart';

class ImageForm extends StatelessWidget {
  const ImageForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          Assets.images.loginImage.path,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
