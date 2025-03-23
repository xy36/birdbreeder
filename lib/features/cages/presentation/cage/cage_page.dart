import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/presentation/cage/cage_screen.dart';
import 'package:birdbreeder/features/cages/presentation/cage/cubit/cage_cubit.dart';
import 'package:birdbreeder/services/injection.dart';

@RoutePage()
class CagePage extends StatelessWidget {
  const CagePage({
    super.key,
    this.initialCage,
  });

  final Cage? initialCage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CageCubit>(
      create: (context) => CageCubit(s1()),
      child: CageScreen(
        initialCage: initialCage,
      ),
    );
  }
}
