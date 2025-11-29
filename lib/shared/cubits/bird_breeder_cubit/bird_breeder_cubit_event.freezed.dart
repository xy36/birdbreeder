// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_breeder_cubit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BirdBreederCubitEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BirdBreederCubitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BirdBreederCubitEvent()';
  }
}

/// @nodoc
class $BirdBreederCubitEventCopyWith<$Res> {
  $BirdBreederCubitEventCopyWith(
      BirdBreederCubitEvent _, $Res Function(BirdBreederCubitEvent) __);
}

/// Adds pattern-matching-related methods to [BirdBreederCubitEvent].
extension BirdBreederCubitEventPatterns on BirdBreederCubitEvent {
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
    TResult Function(BirdbreederEventUpdateFailed value)? updateFailed,
    TResult Function(BirdbreederEventAddFailed value)? addFailed,
    TResult Function(BirdbreederEventDuplicateFailed value)? duplicateFailed,
    TResult Function(BirdbreederEventDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BirdbreederEventUpdateFailed() when updateFailed != null:
        return updateFailed(_that);
      case BirdbreederEventAddFailed() when addFailed != null:
        return addFailed(_that);
      case BirdbreederEventDuplicateFailed() when duplicateFailed != null:
        return duplicateFailed(_that);
      case BirdbreederEventDeleteFailed() when deleteFailed != null:
        return deleteFailed(_that);
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
    required TResult Function(BirdbreederEventUpdateFailed value) updateFailed,
    required TResult Function(BirdbreederEventAddFailed value) addFailed,
    required TResult Function(BirdbreederEventDuplicateFailed value)
        duplicateFailed,
    required TResult Function(BirdbreederEventDeleteFailed value) deleteFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BirdbreederEventUpdateFailed():
        return updateFailed(_that);
      case BirdbreederEventAddFailed():
        return addFailed(_that);
      case BirdbreederEventDuplicateFailed():
        return duplicateFailed(_that);
      case BirdbreederEventDeleteFailed():
        return deleteFailed(_that);
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
    TResult? Function(BirdbreederEventUpdateFailed value)? updateFailed,
    TResult? Function(BirdbreederEventAddFailed value)? addFailed,
    TResult? Function(BirdbreederEventDuplicateFailed value)? duplicateFailed,
    TResult? Function(BirdbreederEventDeleteFailed value)? deleteFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BirdbreederEventUpdateFailed() when updateFailed != null:
        return updateFailed(_that);
      case BirdbreederEventAddFailed() when addFailed != null:
        return addFailed(_that);
      case BirdbreederEventDuplicateFailed() when duplicateFailed != null:
        return duplicateFailed(_that);
      case BirdbreederEventDeleteFailed() when deleteFailed != null:
        return deleteFailed(_that);
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
    TResult Function()? updateFailed,
    TResult Function()? addFailed,
    TResult Function()? duplicateFailed,
    TResult Function()? deleteFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BirdbreederEventUpdateFailed() when updateFailed != null:
        return updateFailed();
      case BirdbreederEventAddFailed() when addFailed != null:
        return addFailed();
      case BirdbreederEventDuplicateFailed() when duplicateFailed != null:
        return duplicateFailed();
      case BirdbreederEventDeleteFailed() when deleteFailed != null:
        return deleteFailed();
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
    required TResult Function() updateFailed,
    required TResult Function() addFailed,
    required TResult Function() duplicateFailed,
    required TResult Function() deleteFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BirdbreederEventUpdateFailed():
        return updateFailed();
      case BirdbreederEventAddFailed():
        return addFailed();
      case BirdbreederEventDuplicateFailed():
        return duplicateFailed();
      case BirdbreederEventDeleteFailed():
        return deleteFailed();
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
    TResult? Function()? updateFailed,
    TResult? Function()? addFailed,
    TResult? Function()? duplicateFailed,
    TResult? Function()? deleteFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BirdbreederEventUpdateFailed() when updateFailed != null:
        return updateFailed();
      case BirdbreederEventAddFailed() when addFailed != null:
        return addFailed();
      case BirdbreederEventDuplicateFailed() when duplicateFailed != null:
        return duplicateFailed();
      case BirdbreederEventDeleteFailed() when deleteFailed != null:
        return deleteFailed();
      case _:
        return null;
    }
  }
}

/// @nodoc

class BirdbreederEventUpdateFailed implements BirdBreederCubitEvent {
  const BirdbreederEventUpdateFailed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdbreederEventUpdateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BirdBreederCubitEvent.updateFailed()';
  }
}

/// @nodoc

class BirdbreederEventAddFailed implements BirdBreederCubitEvent {
  const BirdbreederEventAddFailed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdbreederEventAddFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BirdBreederCubitEvent.addFailed()';
  }
}

/// @nodoc

class BirdbreederEventDuplicateFailed implements BirdBreederCubitEvent {
  const BirdbreederEventDuplicateFailed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdbreederEventDuplicateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BirdBreederCubitEvent.duplicateFailed()';
  }
}

/// @nodoc

class BirdbreederEventDeleteFailed implements BirdBreederCubitEvent {
  const BirdbreederEventDeleteFailed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdbreederEventDeleteFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BirdBreederCubitEvent.deleteFailed()';
  }
}

// dart format on
