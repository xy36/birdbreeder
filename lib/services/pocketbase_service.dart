import 'dart:io';

import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/token_storage_service.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

late final PocketBase pb;

class PocketBaseService {
  PocketBaseService();

  RecordService get birdsCollection => pb.collection('birds');
  RecordService get breedingPairCollection => pb.collection('breedingPair');
  RecordService get broodsCollection => pb.collection('broods');
  RecordService get eggsCollection => pb.collection('eggs');
  RecordService get financesCategoriesCollection =>
      pb.collection('financesCategories');
  RecordService get financesCollection => pb.collection('finances');
  RecordService get cagesCollection => pb.collection('cages');
  RecordService get speciesCollection => pb.collection('species');
  RecordService get colorsCollection => pb.collection('colors');
  RecordService get contactsCollection => pb.collection('contacts');
  RecordService get usersCollection => pb.collection('users');

  AuthStore get authStore => pb.authStore;

  Future<void> clear() async {
    try {
      // stop all realtime traffic first
      await unsubscribeFromAll();

      // clear auth
      pb.authStore.clear();
    } catch (e) {
      // handle error
    }
  }

  Future<void> unsubscribeFromAll() async {
    await pb.realtime.unsubscribe();
  }

  Future<void> init() async {
    final storage = s1<TokenStorageService>();
    final token = await storage.getToken();
    final customAuthStore = AsyncAuthStore(
      initial: token,
      save: storage.setToken,
      clear: storage.deleteToken,
    );
    pb = PocketBase(
      'https://pocketbase.birdbreeder.de/',
      //'http://$_host:8090/',
      authStore: customAuthStore,
    );
  }
}

String get _host => (!kIsWeb && Platform.isAndroid) ? '10.0.2.2' : '127.0.0.1';
