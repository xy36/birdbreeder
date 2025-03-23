import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/presentation/color/color_screen.dart';
import 'package:birdbreeder/features/colors/presentation/color/cubit/color_cubit.dart';
import 'package:birdbreeder/services/injection.dart';

@RoutePage()
class ColorPage extends StatelessWidget {
  const ColorPage({
    super.key,
    this.initialColor,
  });

  final BirdColor? initialColor;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorCubit>(
      create: (context) => ColorCubit(s1()),
      child: ColorScreen(
        initialColor: initialColor,
      ),
    );
  }
}
