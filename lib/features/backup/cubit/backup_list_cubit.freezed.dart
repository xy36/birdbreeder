// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackupListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupListState()';
  }
}

/// @nodoc
class $BackupListStateCopyWith<$Res> {
  $BackupListStateCopyWith(
      BackupListState _, $Res Function(BackupListState) __);
}

/// Adds pattern-matching-related methods to [BackupListState].
extension BackupListStatePatterns on BackupListState {
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
    TResult Function(BackupListLoading value)? loading,
    TResult Function(BackupListLoaded value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BackupListLoading() when loading != null:
        return loading(_that);
      case BackupListLoaded() when loaded != null:
        return loaded(_that);
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
    required TResult Function(BackupListLoading value) loading,
    required TResult Function(BackupListLoaded value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BackupListLoading():
        return loading(_that);
      case BackupListLoaded():
        return loaded(_that);
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
    TResult? Function(BackupListLoading value)? loading,
    TResult? Function(BackupListLoaded value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BackupListLoading() when loading != null:
        return loading(_that);
      case BackupListLoaded() when loaded != null:
        return loaded(_that);
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
    TResult Function()? loading,
    TResult Function(List<File> snapshots)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BackupListLoading() when loading != null:
        return loading();
      case BackupListLoaded() when loaded != null:
        return loaded(_that.snapshots);
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
    required TResult Function() loading,
    required TResult Function(List<File> snapshots) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BackupListLoading():
        return loading();
      case BackupListLoaded():
        return loaded(_that.snapshots);
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
    TResult? Function()? loading,
    TResult? Function(List<File> snapshots)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BackupListLoading() when loading != null:
        return loading();
      case BackupListLoaded() when loaded != null:
        return loaded(_that.snapshots);
      case _:
        return null;
    }
  }
}

/// @nodoc

class BackupListLoading implements BackupListState {
  const BackupListLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupListState.loading()';
  }
}

/// @nodoc

class BackupListLoaded implements BackupListState {
  const BackupListLoaded({required final List<File> snapshots})
      : _snapshots = snapshots;

  final List<File> _snapshots;
  List<File> get snapshots {
    if (_snapshots is EqualUnmodifiableListView) return _snapshots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snapshots);
  }

  /// Create a copy of BackupListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupListLoadedCopyWith<BackupListLoaded> get copyWith =>
      _$BackupListLoadedCopyWithImpl<BackupListLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupListLoaded &&
            const DeepCollectionEquality()
                .equals(other._snapshots, _snapshots));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_snapshots));

  @override
  String toString() {
    return 'BackupListState.loaded(snapshots: $snapshots)';
  }
}

/// @nodoc
abstract mixin class $BackupListLoadedCopyWith<$Res>
    implements $BackupListStateCopyWith<$Res> {
  factory $BackupListLoadedCopyWith(
          BackupListLoaded value, $Res Function(BackupListLoaded) _then) =
      _$BackupListLoadedCopyWithImpl;
  @useResult
  $Res call({List<File> snapshots});
}

/// @nodoc
class _$BackupListLoadedCopyWithImpl<$Res>
    implements $BackupListLoadedCopyWith<$Res> {
  _$BackupListLoadedCopyWithImpl(this._self, this._then);

  final BackupListLoaded _self;
  final $Res Function(BackupListLoaded) _then;

  /// Create a copy of BackupListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? snapshots = null,
  }) {
    return _then(BackupListLoaded(
      snapshots: null == snapshots
          ? _self._snapshots
          : snapshots // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

// dart format on
