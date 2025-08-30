import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';

@RoutePage()
class BreedingPairDetailsPage extends StatelessWidget {
  const BreedingPairDetailsPage({super.key, required this.breedingPairId});

  final String breedingPairId;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
