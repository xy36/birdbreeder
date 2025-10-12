import 'dart:async';

import 'package:async/async.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/services/authentication/authentication_status.dart';
import 'package:birdbreeder/services/authentication/dtos/user_dto.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/authentication/models/user.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:pocketbase/pocketbase.dart';

class AuthenticationService implements IAuthenticationService {
  AuthenticationService(this._pocketBaseService, this._loggingService) {
    // Set initial authentication status
    _syncAuthStatusFromStore();

    // React to changes in the AuthStore
    _authSub = _pocketBaseService.authStore.onChange.listen((event) {
      _loggingService.logger.i('authStore.onChange event: $event');
      _syncAuthStatusFromStore();
    });

    // React centrally to status changes (e.g., auto sign-out)
    authenticationStatus.addListener(() async {
      switch (authenticationStatus.value) {
        case AuthenticationStatus.authenticated:
          _loggingService.logger.i('Authentication status: Authenticated');
          break;
        case AuthenticationStatus.unauthenticated:
          _loggingService.logger.i('Authentication status: Unauthenticated');
          if (_pocketBaseService.authStore.isValid) {
            await signOut();
          }
          break;
        case AuthenticationStatus.unknown:
          _loggingService.logger.i('Authentication status: Unknown');
          break;
      }
    });
  }

  final PocketBaseService _pocketBaseService;
  final LoggingService _loggingService;

  StreamSubscription<void>? _authSub;

  @override
  final authenticationStatus =
      ValueNotifier<AuthenticationStatus>(AuthenticationStatus.unknown);

  /// Reads the current user from the AuthStore (if available).
  @override
  Result<User?> currentUser() {
    try {
      final model = _pocketBaseService.authStore.model as RecordModel?;
      if (model == null) return Result.value(null);
      final user = UserDto.fromJson(model.toJson()).toModel();
      return Result.value(user);
    } catch (e, st) {
      _loggingService.logger
          .e('currentUser() failed', error: e, stackTrace: st);
      return Result.error(e);
    }
  }

  /// E-Mail/Password Login via PocketBase.
  @override
  Future<Result<User>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final authData = await _pocketBaseService.usersCollection
          .authWithPassword(email, password);

      // Status and logging
      if (_pocketBaseService.authStore.isValid) {
        authenticationStatus.value = AuthenticationStatus.authenticated;
        _loggingService.logger.i('User authenticated (email=$email)');
      } else {
        _loggingService.logger.w('AuthStore not valid after signIn');
      }

      final user = UserDto.fromJson(authData.record!.toJson()).toModel();
      return Result.value(user);
    } on ClientException catch (e, st) {
      _loggingService.logger.w(
        'signIn failed (email=$email): ${_clientMessage(e)}',
        error: e,
        stackTrace: st,
      );
      return Result.error(e);
    } catch (e, st) {
      _loggingService.logger
          .e('signIn unknown error', error: e, stackTrace: st);
      return Result.error(e);
    }
  }

  /// Register a new user and auto-login.
  @override
  Future<Result<User>> signUpWithEmailAndPassword(
    String email,
    String password,
    String firstName,
    String lastName,
  ) async {
    try {
      final record = await _pocketBaseService.usersCollection.create(
        body: <String, dynamic>{
          'email': email,
          'password': password,
          'passwordConfirm': password,
          'firstName': firstName,
          'lastName': lastName,
        },
      );

      _loggingService.logger.i(
        'User created: ${record.id} (email=$email, firstName=$firstName, lastName=$lastName)',
      );

      final authData = await _pocketBaseService.usersCollection
          .authWithPassword(email, password);

      if (_pocketBaseService.authStore.isValid) {
        authenticationStatus.value = AuthenticationStatus.authenticated;
      } else {
        _loggingService.logger.w('AuthStore not valid after signUp login');
      }

      final user = UserDto.fromJson(authData.record!.toJson()).toModel();
      return Result.value(user);
    } on ClientException catch (e, st) {
      _loggingService.logger.w(
        'signUp failed (email=$email): ${_clientMessage(e)}',
        error: e,
        stackTrace: st,
      );
      return Result.error(e);
    } catch (e, st) {
      _loggingService.logger
          .e('signUp unknown error', error: e, stackTrace: st);
      return Result.error(e);
    }
  }

  @override
  Future<Result<void>> signOut() async {
    try {
      await s1.get<BirdBreederCubit>().close();

      _pocketBaseService.authStore.clear();

      if (authenticationStatus.value != AuthenticationStatus.unauthenticated) {
        authenticationStatus.value = AuthenticationStatus.unauthenticated;
      }

      _loggingService.logger.i('Signed out.');
      return Result.value(null);
    } catch (e, st) {
      _loggingService.logger.e('signOut failed', error: e, stackTrace: st);
      try {
        _pocketBaseService.authStore.clear();
        authenticationStatus.value = AuthenticationStatus.unauthenticated;
      } catch (_) {}
      return Result.error(e);
    }
  }

  // -------------------------
  // Lifecycle
  // -------------------------

  @mustCallSuper
  void dispose() {
    _authSub?.cancel();
    authenticationStatus.dispose();
  }

  // -------------------------
  // Helpers
  // -------------------------

  void _syncAuthStatusFromStore() {
    final newStatus = _pocketBaseService.authStore.isValid
        ? AuthenticationStatus.authenticated
        : AuthenticationStatus.unauthenticated;

    if (authenticationStatus.value != newStatus) {
      authenticationStatus.value = newStatus;
    }
  }

  String _clientMessage(ClientException e) {
    final msg = e.response['message']?.toString();
    final status = e.statusCode;
    return msg != null ? '$msg (HTTP $status)' : 'HTTP $status';
  }
}
