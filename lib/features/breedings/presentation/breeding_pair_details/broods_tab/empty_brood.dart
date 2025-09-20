import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';

class EmptyBrood extends StatelessWidget {
  const EmptyBrood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Transform.translate(
                  offset: const Offset(-20, 0),
                  child: const Icon(Icons.egg_outlined, size: 40),
                ),
                Transform.translate(
                  offset: const Offset(0, -15),
                  child: const Icon(Icons.egg_outlined, size: 40),
                ),
                Transform.translate(
                  offset: const Offset(20, 0),
                  child: const Icon(Icons.egg_outlined, size: 40),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(context.tr.brood.empty, style: context.titleMedium),
          ],
        ),
      ),
    );
  }
}
