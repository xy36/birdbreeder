import 'package:hive_flutter/hive_flutter.dart';

enum HiveBoxes {
  dioCache('dio_cache_box');

  const HiveBoxes(this.name);

  final String name;
}

Future<void> initializeHive() async {
  await Hive.initFlutter();
}

/// Close all boxes
Future<void> closeBoxes() async {
  await Hive.close();
}
