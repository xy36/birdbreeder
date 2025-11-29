// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_cubit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BirdCubitEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BirdCubitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BirdCubitEvent()';
  }
}

/// @nodoc
class $BirdCubitEventCopyWith<$Res> {
  $BirdCubitEventCopyWith(BirdCubitEvent _, $Res Function(BirdCubitEvent) __);
}

/// Adds pattern-matching-related methods to [BirdCubitEvent].
extension BirdCubitEventPatterns on BirdCubitEvent {
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
    TResult Function(BirdCubitEventDeleted value)? deleted,
    TResult Function(BirdCubitEventSaved value)? saved,
    TResult Function(BirdCubitEventDuplicated value)? duplicated,
    TResult Function(BirdCubitEventError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BirdCubitEventDeleted() when deleted != null:
        return deleted(_that);
      case BirdCubitEventSaved() when saved != null:
        return saved(_that);
      case BirdCubitEventDuplicated() when duplicated != null:
        return duplicated(_that);
      case BirdCubitEventError() when error != null:
        return error(_that);
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
    required TResult Function(BirdCubitEventDeleted value) deleted,
    required TResult Function(BirdCubitEventSaved value) saved,
    required TResult Function(BirdCubitEventDuplicated value) duplicated,
    required TResult Function(BirdCubitEventError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case BirdCubitEventDeleted():
        return deleted(_that);
      case BirdCubitEventSaved():
        return saved(_that);
      case BirdCubitEventDuplicated():
        return duplicated(_that);
      case BirdCubitEventError():
        return error(_that);
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
    TResult? Function(BirdCubitEventDeleted value)? deleted,
    TResult? Function(BirdCubitEventSaved value)? saved,
    TResult? Function(BirdCubitEventDuplicated value)? duplicated,
    TResult? Function(BirdCubitEventError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case BirdCubitEventDeleted() when deleted != null:
        return deleted(_that);
      case BirdCubitEventSaved() when saved != null:
        return saved(_that);
      case BirdCubitEventDuplicated() when duplicated != null:
        return duplicated(_that);
      case BirdCubitEventError() when error != null:
        return error(_that);
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
    TResult Function()? deleted,
    TResult Function()? saved,
    TResult Function()? duplicated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BirdCubitEventDeleted() when deleted != null:
        return deleted();
      case BirdCubitEventSaved() when saved != null:
        return saved();
      case BirdCubitEventDuplicated() when duplicated != null:
        return duplicated();
      case BirdCubitEventError() when error != null:
        return error();
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
    required TResult Function() deleted,
    required TResult Function() saved,
    required TResult Function() duplicated,
    required TResult Function() error,
  }) {
    final _that = this;
    switch (_that) {
      case BirdCubitEventDeleted():
        return deleted();
      case BirdCubitEventSaved():
        return saved();
      case BirdCubitEventDuplicated():
        return duplicated();
      case BirdCubitEventError():
        return error();
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
    TResult? Function()? deleted,
    TResult? Function()? saved,
    TResult? Function()? duplicated,
    TResult? Function()? error,
  }) {
    final _that = this;
    switch (_that) {
      case BirdCubitEventDeleted() when deleted != null:
        return deleted();
      case BirdCubitEventSaved() when saved != null:
        return saved();
      case BirdCubitEventDuplicated() when duplicated != null:
        return duplicated();
      case BirdCubitEventError() when error != null:
        return error();
      case _:
        return null;
    }
  }
}

/// @nodoc

class BirdCubitEventDeleted implements BirdCubitEvent {
  const BirdCubitEventDeleted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BirdCubitEventDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BirdCubitEvent.deleted()';
  }
}

/// @nodoc

class BirdCubitEventSaved implements BirdCubitEvent {
  const BirdCubitEventSaved();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BirdCubitEventSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BirdCubitEvent.saved()';
  }
}

/// @nodoc

class BirdCubitEventDuplicated implements BirdCubitEvent {
  const BirdCubitEventDuplicated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BirdCubitEventDuplicated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BirdCubitEvent.duplicated()';
  }
}

/// @nodoc

class BirdCubitEventError implements BirdCubitEvent {
  const BirdCubitEventError();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BirdCubitEventError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BirdCubitEvent.error()';
  }
}

// dart format on
