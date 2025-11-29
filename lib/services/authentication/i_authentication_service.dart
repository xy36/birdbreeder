import 'package:async/async.dart';
import 'package:birdbreeder/models/authentication/entity/user.dart';
import 'package:birdbreeder/services/authentication/authentication_status.dart';
import 'package:flutter/material.dart';

abstract class IAuthenticationService {
  /// Current Authentication Status of the user.
  final authenticationStatus =
      ValueNotifier<AuthenticationStatus>(AuthenticationStatus.unknown);

  Future<Result<User>> signUpWithEmailAndPassword(
    String email,
    String password,
    String firstName,
    String lastName,
  );
  Future<Result<User>> signInWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Result<void>> signOut();
  Result<User?> currentUser();
}
