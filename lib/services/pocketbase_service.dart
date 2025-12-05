import 'dart:io';

import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/token_storage_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:pocketbase_drift/pocketbase_drift.dart';

late final $PocketBase client;

class PocketBaseService {
  PocketBaseService();

  $RecordService get birdsCollection => client.collection('birds');
  $RecordService get breedingPairCollection =>
      client.collection('breedingPair');
  $RecordService get broodsCollection => client.collection('broods');
  $RecordService get eggsCollection => client.collection('eggs');
  $RecordService get financesCategoriesCollection =>
      client.collection('financesCategories');
  $RecordService get financesCollection => client.collection('finances');
  $RecordService get cagesCollection => client.collection('cages');
  $RecordService get speciesCollection => client.collection('species');
  $RecordService get colorsCollection => client.collection('colors');
  $RecordService get contactsCollection => client.collection('contacts');
  $RecordService get usersCollection => client.collection('users');

  AuthStore get authStore => client.authStore;

  Future<void> clear() async {
    try {
      // clear auth
      client.authStore.clear();
    } catch (e) {
      // handle error
    }
  }

  Future<void> init() async {
    final schema = await rootBundle.loadString('assets/pb_schema.json');

    final storage = s1<TokenStorageService>();
    final token = await storage.getToken();
    final customAuthStore = $AuthStore(
      initial: token,
      save: storage.setToken,
      clear: storage.deleteToken,
    );
    client = $PocketBase.database(
      'https://pocketbase.birdbreeder.de/',
      //'http://$_host:8090/',
      authStore: customAuthStore,
    )..cacheSchema(schema);
  }
}

String get _host => (!kIsWeb && Platform.isAndroid) ? '10.0.2.2' : '127.0.0.1';
