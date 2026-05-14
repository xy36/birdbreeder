import 'package:async/async.dart';
import 'package:birdbreeder/models/authentication/entity/user.dart';
import 'package:birdbreeder/services/authentication/authentication_status.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:flutter/foundation.dart';

class LocalAuthenticationService implements IAuthenticationService {
  LocalAuthenticationService();

  @override
  final authenticationStatus = ValueNotifier<AuthenticationStatus>(
    AuthenticationStatus.authenticated,
  );

  @override
  Future<Result<User>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    return Result.error('Not supported in local mode');
  }

  @override
  Future<Result<User>> signUpWithEmailAndPassword(
    String email,
    String password,
    String firstName,
    String lastName,
  ) async {
    return Result.error('Not supported in local mode');
  }

  @override
  Future<Result<void>> signOut() async {
    return Result.error('Not supported in local mode');
  }

  @override
  Result<User?> currentUser() => Result.value(null);
}
