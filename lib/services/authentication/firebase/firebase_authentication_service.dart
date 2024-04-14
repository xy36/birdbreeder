import 'package:async/src/result/result.dart';
import 'package:birdbreeder/services/authentication/authentication_status.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/change_notifier.dart';

class FirebaseAuthenticationService implements IAuthenticationService {
  FirebaseAuthenticationService() {
    final user = s1.get<FirebaseAuth>().currentUser;
    if (user != null) {
      _authenticationStatus.value = AuthenticationStatus.authenticated;
    } else {
      _authenticationStatus.value = AuthenticationStatus.unauthenticated;
    }
    s1.get<FirebaseAuth>().authStateChanges().listen((User? user) {
      if (user == null) {
        _authenticationStatus.value = AuthenticationStatus.unauthenticated;
      } else {
        _authenticationStatus.value = AuthenticationStatus.authenticated;
      }
    });
  }
  final ValueNotifier<AuthenticationStatus> _authenticationStatus =
      ValueNotifier<AuthenticationStatus>(AuthenticationStatus.unknown);

//  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<Result<User>> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userCredential = await s1
          .get<FirebaseAuth>()
          .createUserWithEmailAndPassword(email: email, password: password);

      if (userCredential.user != null) {
        return Result.value(userCredential.user!);
      }
    } catch (e) {
      print('error while sign up with email and password $e');
    }
    return Result.error('User not found');
  }

  @override
  Future<Result<User>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userCredential =
          await s1.get<FirebaseAuth>().signInWithEmailAndPassword(
                email: email,
                password: password,
              );
      if (userCredential.user != null) {
        _authenticationStatus.value = AuthenticationStatus.authenticated;
        return Result.value(userCredential.user!);
      }
    } catch (e) {
      print('error while sign in with email and password $e');
    }
    return Result.error('User not found');
  }

  @override
  Result<User> currentUser() {
    final currentUser = s1.get<FirebaseAuth>().currentUser;

    return currentUser != null
        ? Result.value(currentUser)
        : Result.error('User not found');
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
  Future<Result<void>> signOut() async {
    try {
      await s1.get<FirebaseAuth>().signOut();
      _authenticationStatus.value = AuthenticationStatus.unauthenticated;
      return Result.value(null);
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  ValueNotifier<AuthenticationStatus> get authenticationStatus =>
      _authenticationStatus;
}
