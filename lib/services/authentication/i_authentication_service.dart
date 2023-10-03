import 'package:async/async.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'authentication_status.dart';

abstract class IAuthenticationService {
  /// Current Authentication Status of the user.
  final authenticationStatus =
      ValueNotifier<AuthenticationStatus>(AuthenticationStatus.unknown);

  Future<Result<User>> signUpWithEmailAndPassword(
      String email, String password);
  Future<Result<User>> signInWithEmailAndPassword(
      String email, String password);
  Future<Result<User>> signInWithGoogle();
  Future<Result<User>> signInWithFacebook();
  Future<Result<void>> signOut();
  Result<User> currentUser();
}
