import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair/breeding_pair_screen.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair/cubit/breeding_pair_cubit.dart';
import 'package:birdbreeder/services/injection.dart';

@RoutePage()
class BreedingPairPage extends StatelessWidget {
  const BreedingPairPage({
    super.key,
    this.initialBreedingPair,
  });

  final BreedingPair? initialBreedingPair;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BreedingPairCubit>(
      create: (context) => BreedingPairCubit(s1()),
      child: BreedingPairScreen(
        initialBreedingPair: initialBreedingPair,
      ),
    );
  }
}
