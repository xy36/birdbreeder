import 'package:async/async.dart';
import 'package:birdbreeder/services/authentication/authentication_status.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/authentication/user.dart';
import 'package:flutter/material.dart';

class AuthenticationService implements IAuthenticationService {
  @override
  // TODO: implement authenticationStatus
  ValueNotifier<AuthenticationStatus> get authenticationStatus =>
      ValueNotifier<AuthenticationStatus>(AuthenticationStatus.authenticated);

  @override
  Result<User> currentUser() {
    // TODO: implement currentUser
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> signInWithEmailAndPassword(
    String email,
    String password,
  ) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> signUpWithEmailAndPassword(
    String email,
    String password,
  ) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }
}
