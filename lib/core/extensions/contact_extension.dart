import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension ContactListExtension on List<Contact> {
  Contact? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}

extension ContactExtension on Contact {
  String get displayName {
    return '${firstName ?? ''} ${name ?? ''}'.trim();
  }

  int get birdsSoldCount {
    return s1
        .get<BirdBreederCubit>()
        .state
        .birdBreederResources
        .birds
        .where((bird) => bird.soldToId == id)
        .length;
  }

  int get birdsBoughtCount {
    return s1
        .get<BirdBreederCubit>()
        .state
        .birdBreederResources
        .birds
        .where((bird) => bird.boughtFromId == id)
        .length;
  }

  bool changed<T>(Contact? initial, T? Function(Contact) pick) {
    if (initial == null) return false;
    final a = pick(this);
    final b = pick(initial);
    return a != b;
  }
}
