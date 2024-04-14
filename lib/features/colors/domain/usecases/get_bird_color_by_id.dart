import 'package:async/async.dart';
import 'package:birdbreeder/features/colors/domain/entities/bird_color.dart';
import 'package:birdbreeder/features/colors/domain/repositories/i_color_repository.dart';
import 'package:birdbreeder/services/injection.dart';

class GetBirdColorByIdUsecase {
  GetBirdColorByIdUsecase();
  final repository = s1.get<IBirdColorsRepository>();

  Future<Result<BirdColor>> call(String id) async {
    return repository.getById(id);
  }
}
