// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_cubit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountCubitEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AccountCubitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AccountCubitEvent()';
  }
}

/// @nodoc
class $AccountCubitEventCopyWith<$Res> {
  $AccountCubitEventCopyWith(
      AccountCubitEvent _, $Res Function(AccountCubitEvent) __);
}

/// Adds pattern-matching-related methods to [AccountCubitEvent].
extension AccountCubitEventPatterns on AccountCubitEvent {
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
    TResult Function(AccountExportFailed value)? exportFailed,
    TResult Function(AccountExportSucceeded value)? exportSucceeded,
    TResult Function(AccountImportFailed value)? importFailed,
    TResult Function(AccountImportSucceeded value)? importSucceeded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AccountExportFailed() when exportFailed != null:
        return exportFailed(_that);
      case AccountExportSucceeded() when exportSucceeded != null:
        return exportSucceeded(_that);
      case AccountImportFailed() when importFailed != null:
        return importFailed(_that);
      case AccountImportSucceeded() when importSucceeded != null:
        return importSucceeded(_that);
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
    required TResult Function(AccountExportFailed value) exportFailed,
    required TResult Function(AccountExportSucceeded value) exportSucceeded,
    required TResult Function(AccountImportFailed value) importFailed,
    required TResult Function(AccountImportSucceeded value) importSucceeded,
  }) {
    final _that = this;
    switch (_that) {
      case AccountExportFailed():
        return exportFailed(_that);
      case AccountExportSucceeded():
        return exportSucceeded(_that);
      case AccountImportFailed():
        return importFailed(_that);
      case AccountImportSucceeded():
        return importSucceeded(_that);
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
    TResult? Function(AccountExportFailed value)? exportFailed,
    TResult? Function(AccountExportSucceeded value)? exportSucceeded,
    TResult? Function(AccountImportFailed value)? importFailed,
    TResult? Function(AccountImportSucceeded value)? importSucceeded,
  }) {
    final _that = this;
    switch (_that) {
      case AccountExportFailed() when exportFailed != null:
        return exportFailed(_that);
      case AccountExportSucceeded() when exportSucceeded != null:
        return exportSucceeded(_that);
      case AccountImportFailed() when importFailed != null:
        return importFailed(_that);
      case AccountImportSucceeded() when importSucceeded != null:
        return importSucceeded(_that);
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
    TResult Function(String message)? exportFailed,
    TResult Function()? exportSucceeded,
    TResult Function(String message)? importFailed,
    TResult Function(int count)? importSucceeded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case AccountExportFailed() when exportFailed != null:
        return exportFailed(_that.message);
      case AccountExportSucceeded() when exportSucceeded != null:
        return exportSucceeded();
      case AccountImportFailed() when importFailed != null:
        return importFailed(_that.message);
      case AccountImportSucceeded() when importSucceeded != null:
        return importSucceeded(_that.count);
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
    required TResult Function(String message) exportFailed,
    required TResult Function() exportSucceeded,
    required TResult Function(String message) importFailed,
    required TResult Function(int count) importSucceeded,
  }) {
    final _that = this;
    switch (_that) {
      case AccountExportFailed():
        return exportFailed(_that.message);
      case AccountExportSucceeded():
        return exportSucceeded();
      case AccountImportFailed():
        return importFailed(_that.message);
      case AccountImportSucceeded():
        return importSucceeded(_that.count);
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
    TResult? Function(String message)? exportFailed,
    TResult? Function()? exportSucceeded,
    TResult? Function(String message)? importFailed,
    TResult? Function(int count)? importSucceeded,
  }) {
    final _that = this;
    switch (_that) {
      case AccountExportFailed() when exportFailed != null:
        return exportFailed(_that.message);
      case AccountExportSucceeded() when exportSucceeded != null:
        return exportSucceeded();
      case AccountImportFailed() when importFailed != null:
        return importFailed(_that.message);
      case AccountImportSucceeded() when importSucceeded != null:
        return importSucceeded(_that.count);
      case _:
        return null;
    }
  }
}

/// @nodoc

class AccountExportFailed implements AccountCubitEvent {
  const AccountExportFailed(this.message);

  final String message;

  /// Create a copy of AccountCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccountExportFailedCopyWith<AccountExportFailed> get copyWith =>
      _$AccountExportFailedCopyWithImpl<AccountExportFailed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountExportFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AccountCubitEvent.exportFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $AccountExportFailedCopyWith<$Res>
    implements $AccountCubitEventCopyWith<$Res> {
  factory $AccountExportFailedCopyWith(
          AccountExportFailed value, $Res Function(AccountExportFailed) _then) =
      _$AccountExportFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AccountExportFailedCopyWithImpl<$Res>
    implements $AccountExportFailedCopyWith<$Res> {
  _$AccountExportFailedCopyWithImpl(this._self, this._then);

  final AccountExportFailed _self;
  final $Res Function(AccountExportFailed) _then;

  /// Create a copy of AccountCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(AccountExportFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class AccountExportSucceeded implements AccountCubitEvent {
  const AccountExportSucceeded();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AccountExportSucceeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AccountCubitEvent.exportSucceeded()';
  }
}

/// @nodoc

class AccountImportFailed implements AccountCubitEvent {
  const AccountImportFailed(this.message);

  final String message;

  /// Create a copy of AccountCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccountImportFailedCopyWith<AccountImportFailed> get copyWith =>
      _$AccountImportFailedCopyWithImpl<AccountImportFailed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountImportFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AccountCubitEvent.importFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $AccountImportFailedCopyWith<$Res>
    implements $AccountCubitEventCopyWith<$Res> {
  factory $AccountImportFailedCopyWith(
          AccountImportFailed value, $Res Function(AccountImportFailed) _then) =
      _$AccountImportFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AccountImportFailedCopyWithImpl<$Res>
    implements $AccountImportFailedCopyWith<$Res> {
  _$AccountImportFailedCopyWithImpl(this._self, this._then);

  final AccountImportFailed _self;
  final $Res Function(AccountImportFailed) _then;

  /// Create a copy of AccountCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(AccountImportFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class AccountImportSucceeded implements AccountCubitEvent {
  const AccountImportSucceeded(this.count);

  final int count;

  /// Create a copy of AccountCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccountImportSucceededCopyWith<AccountImportSucceeded> get copyWith =>
      _$AccountImportSucceededCopyWithImpl<AccountImportSucceeded>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccountImportSucceeded &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @override
  String toString() {
    return 'AccountCubitEvent.importSucceeded(count: $count)';
  }
}

/// @nodoc
abstract mixin class $AccountImportSucceededCopyWith<$Res>
    implements $AccountCubitEventCopyWith<$Res> {
  factory $AccountImportSucceededCopyWith(AccountImportSucceeded value,
          $Res Function(AccountImportSucceeded) _then) =
      _$AccountImportSucceededCopyWithImpl;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$AccountImportSucceededCopyWithImpl<$Res>
    implements $AccountImportSucceededCopyWith<$Res> {
  _$AccountImportSucceededCopyWithImpl(this._self, this._then);

  final AccountImportSucceeded _self;
  final $Res Function(AccountImportSucceeded) _then;

  /// Create a copy of AccountCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
  }) {
    return _then(AccountImportSucceeded(
      null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
