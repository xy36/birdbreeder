import 'dart:io';

import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/token_storage_service.dart';
import 'package:pocketbase/pocketbase.dart';

late final PocketBase pb;

class PocketBaseService {
  PocketBaseService();

  RecordService get birdsCollection => pb.collection('birds');
  RecordService get cagesCollection => pb.collection('cages');
  RecordService get speciesCollection => pb.collection('species');
  RecordService get colorsCollection => pb.collection('colors');
  RecordService get usersCollection => pb.collection('users');

  AuthStore get authStore => pb.authStore;

  Future<void> init() async {
    final storage = s1<TokenStorageService>();
    final token = await storage.getToken();
    final customAuthStore = AsyncAuthStore(
      initial: token,
      save: storage.setToken,
      clear: storage.deleteToken,
    );
    pb = PocketBase(
      'http://$_host:8090/',
      authStore: customAuthStore,
    );
  }
}

String get _host => (Platform.isAndroid) ? '10.0.2.2' : '127.0.0.1';
