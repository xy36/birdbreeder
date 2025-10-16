import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

class BirdBreederWrapper extends StatelessWidget {
  const BirdBreederWrapper({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBreederCubit, BirdBreederState>(
      builder: (context, state) {
        return Stack(
          children: [
            child,
            if (state is BirdBreederLoading)
              ColoredBox(
                color: Theme.of(context)
                    .colorScheme
                    .surface
                    .withValues(alpha: 0.7),
                child: const Center(child: CircularProgressIndicator()),
              ),
          ],
        );
      },
    );
  }
}
