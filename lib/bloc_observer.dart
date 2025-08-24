import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  Logger get logger => s1.get<LoggingService>().logger;

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    // Filter optional: nur interessante Cubits loggen
    if (bloc is BirdBreederCubit) {
      logger.i(
        '[${bloc.runtimeType}] '
        'state: ${_short(change.currentState)} → ${_short(change.nextState)}',
      );
    }
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    logger.e(
      '[${bloc.runtimeType}] ERROR: $error',
      error: error,
      stackTrace: stackTrace,
    );
    super.onError(bloc, error, stackTrace);
  }
}

// Hilfsfunktion: kürzt lange States (Listen nur als Count)
String _short(Object? state) {
  if (state is BirdBreederState) {
    final r = state.birdBreederResources;
    return '${state.runtimeType}'
        '(birds:${r.birds.length}, pairs:${r.breedingPairs.length}, '
        'broods:${r.broods.length}, cages:${r.cages.length}, '
        'colors:${r.colors.length}, contacts:${r.contacts.length}, '
        'species:${r.species.length})';
  }
  return state.toString();
}
