import 'package:async/async.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/services/authentication/authentication_status.dart';
import 'package:birdbreeder/services/authentication/dtos/user_dto.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/authentication/models/user.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';

class AuthenticationService implements IAuthenticationService {
  AuthenticationService(this._pocketBaseService, this._loggingService) {
    _pocketBaseService.authStore.onChange.listen((event) {
      print('authStore.onChange event: $event');
      if (_pocketBaseService.authStore.isValid) {
        authenticationStatus.value = AuthenticationStatus.authenticated;
      } else {
        authenticationStatus.value = AuthenticationStatus.unauthenticated;
      }
    });

    if (_pocketBaseService.authStore.isValid) {
      authenticationStatus.value = AuthenticationStatus.authenticated;
    } else {
      authenticationStatus.value = AuthenticationStatus.unauthenticated;
    }
  }

  final PocketBaseService _pocketBaseService;
  final LoggingService _loggingService;

  @override
  final authenticationStatus =
      ValueNotifier<AuthenticationStatus>(AuthenticationStatus.unknown);

  @override
  Result<User?> currentUser() {
    final model = _pocketBaseService.authStore.model as RecordModel?;

    if (model == null) {
      return Result.value(null);
    }

    final user = UserDto.fromJson(
      model.toJson(),
    ).toModel();

    return Result.value(
      user,
    );
  }

  @override
  Future<Result<User>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final authData = await _pocketBaseService.usersCollection
        .authWithPassword(email, password);

    if (_pocketBaseService.authStore.isValid) {
      authenticationStatus.value = AuthenticationStatus.authenticated;
      _loggingService.logger.info('User is authenticated');
    } else {
      _loggingService.logger.info('User is not authenticated');
    }

    final user = UserDto.fromJson(authData.record!.toJson()).toModel();

    return Result.value(
      user,
    );
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
    _pocketBaseService.authStore.clear();
    return Result.value(null);
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
