// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthPageEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthPageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthPageEvent()';
  }
}

/// @nodoc
class $AuthPageEventCopyWith<$Res> {
  $AuthPageEventCopyWith(AuthPageEvent _, $Res Function(AuthPageEvent) __);
}

/// Adds pattern-matching-related methods to [AuthPageEvent].
extension AuthPageEventPatterns on AuthPageEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthPageEventSignUpSucceeded value)? signUpSucceeded,
    TResult Function(AuthPageEventSignUpFailed value)? signUpFailed,
    TResult Function(AuthPageEventSignInFailed value)? signInFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthPageEventSignUpSucceeded() when signUpSucceeded != null:
        return signUpSucceeded(_that);
      case AuthPageEventSignUpFailed() when signUpFailed != null:
        return signUpFailed(_that);
      case AuthPageEventSignInFailed() when signInFailed != null:
        return signInFailed(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthPageEventSignUpSucceeded value)
        signUpSucceeded,
    required TResult Function(AuthPageEventSignUpFailed value) signUpFailed,
    required TResult Function(AuthPageEventSignInFailed value) signInFailed,
  }) {
    final _that = this;
    switch (_that) {
      case AuthPageEventSignUpSucceeded():
        return signUpSucceeded(_that);
      case AuthPageEventSignUpFailed():
        return signUpFailed(_that);
      case AuthPageEventSignInFailed():
        return signInFailed(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthPageEventSignUpSucceeded value)? signUpSucceeded,
    TResult? Function(AuthPageEventSignUpFailed value)? signUpFailed,
    TResult? Function(AuthPageEventSignInFailed value)? signInFailed,
  }) {
    final _that = this;
    switch (_that) {
      case AuthPageEventSignUpSucceeded() when signUpSucceeded != null:
        return signUpSucceeded(_that);
      case AuthPageEventSignUpFailed() when signUpFailed != null:
        return signUpFailed(_that);
      case AuthPageEventSignInFailed() when signInFailed != null:
        return signInFailed(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpSucceeded,
    TResult Function()? signUpFailed,
    TResult Function()? signInFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AuthPageEventSignUpSucceeded() when signUpSucceeded != null:
        return signUpSucceeded();
      case AuthPageEventSignUpFailed() when signUpFailed != null:
        return signUpFailed();
      case AuthPageEventSignInFailed() when signInFailed != null:
        return signInFailed();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpSucceeded,
    required TResult Function() signUpFailed,
    required TResult Function() signInFailed,
  }) {
    final _that = this;
    switch (_that) {
      case AuthPageEventSignUpSucceeded():
        return signUpSucceeded();
      case AuthPageEventSignUpFailed():
        return signUpFailed();
      case AuthPageEventSignInFailed():
        return signInFailed();
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpSucceeded,
    TResult? Function()? signUpFailed,
    TResult? Function()? signInFailed,
  }) {
    final _that = this;
    switch (_that) {
      case AuthPageEventSignUpSucceeded() when signUpSucceeded != null:
        return signUpSucceeded();
      case AuthPageEventSignUpFailed() when signUpFailed != null:
        return signUpFailed();
      case AuthPageEventSignInFailed() when signInFailed != null:
        return signInFailed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class AuthPageEventSignUpSucceeded implements AuthPageEvent {
  const AuthPageEventSignUpSucceeded();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthPageEventSignUpSucceeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthPageEvent.signUpSucceeded()';
  }
}

/// @nodoc

class AuthPageEventSignUpFailed implements AuthPageEvent {
  const AuthPageEventSignUpFailed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthPageEventSignUpFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthPageEvent.signUpFailed()';
  }
}

/// @nodoc

class AuthPageEventSignInFailed implements AuthPageEvent {
  const AuthPageEventSignInFailed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthPageEventSignInFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthPageEvent.signInFailed()';
  }
}

// dart format on
