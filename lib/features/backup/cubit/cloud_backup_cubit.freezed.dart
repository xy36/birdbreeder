// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_backup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CloudBackupState {
  bool get loading;
  bool get supported;
  bool get enabled;
  bool get available;
  CloudUnavailableReason? get unavailableReason;
  String? get locationName;
  DateTime? get lastSyncAt;
  bool get syncing;
  AutoBackupInterval get interval;

  /// Create a copy of CloudBackupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloudBackupStateCopyWith<CloudBackupState> get copyWith =>
      _$CloudBackupStateCopyWithImpl<CloudBackupState>(
          this as CloudBackupState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloudBackupState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.supported, supported) ||
                other.supported == supported) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.lastSyncAt, lastSyncAt) ||
                other.lastSyncAt == lastSyncAt) &&
            (identical(other.syncing, syncing) || other.syncing == syncing) &&
            (identical(other.interval, interval) ||
                other.interval == interval));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      supported,
      enabled,
      available,
      unavailableReason,
      locationName,
      lastSyncAt,
      syncing,
      interval);

  @override
  String toString() {
    return 'CloudBackupState(loading: $loading, supported: $supported, enabled: $enabled, available: $available, unavailableReason: $unavailableReason, locationName: $locationName, lastSyncAt: $lastSyncAt, syncing: $syncing, interval: $interval)';
  }
}

/// @nodoc
abstract mixin class $CloudBackupStateCopyWith<$Res> {
  factory $CloudBackupStateCopyWith(
          CloudBackupState value, $Res Function(CloudBackupState) _then) =
      _$CloudBackupStateCopyWithImpl;
  @useResult
  $Res call(
      {bool loading,
      bool supported,
      bool enabled,
      bool available,
      CloudUnavailableReason? unavailableReason,
      String? locationName,
      DateTime? lastSyncAt,
      bool syncing,
      AutoBackupInterval interval});
}

/// @nodoc
class _$CloudBackupStateCopyWithImpl<$Res>
    implements $CloudBackupStateCopyWith<$Res> {
  _$CloudBackupStateCopyWithImpl(this._self, this._then);

  final CloudBackupState _self;
  final $Res Function(CloudBackupState) _then;

  /// Create a copy of CloudBackupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? supported = null,
    Object? enabled = null,
    Object? available = null,
    Object? unavailableReason = freezed,
    Object? locationName = freezed,
    Object? lastSyncAt = freezed,
    Object? syncing = null,
    Object? interval = null,
  }) {
    return _then(_self.copyWith(
      loading: null == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      supported: null == supported
          ? _self.supported
          : supported // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      available: null == available
          ? _self.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      unavailableReason: freezed == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as CloudUnavailableReason?,
      locationName: freezed == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSyncAt: freezed == lastSyncAt
          ? _self.lastSyncAt
          : lastSyncAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncing: null == syncing
          ? _self.syncing
          : syncing // ignore: cast_nullable_to_non_nullable
              as bool,
      interval: null == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as AutoBackupInterval,
    ));
  }
}

/// Adds pattern-matching-related methods to [CloudBackupState].
extension CloudBackupStatePatterns on CloudBackupState {
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
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CloudBackupState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CloudBackupState() when $default != null:
        return $default(_that);
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
  TResult map<TResult extends Object?>(
    TResult Function(_CloudBackupState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloudBackupState():
        return $default(_that);
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
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CloudBackupState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloudBackupState() when $default != null:
        return $default(_that);
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
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool loading,
            bool supported,
            bool enabled,
            bool available,
            CloudUnavailableReason? unavailableReason,
            String? locationName,
            DateTime? lastSyncAt,
            bool syncing,
            AutoBackupInterval interval)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CloudBackupState() when $default != null:
        return $default(
            _that.loading,
            _that.supported,
            _that.enabled,
            _that.available,
            _that.unavailableReason,
            _that.locationName,
            _that.lastSyncAt,
            _that.syncing,
            _that.interval);
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
  TResult when<TResult extends Object?>(
    TResult Function(
            bool loading,
            bool supported,
            bool enabled,
            bool available,
            CloudUnavailableReason? unavailableReason,
            String? locationName,
            DateTime? lastSyncAt,
            bool syncing,
            AutoBackupInterval interval)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloudBackupState():
        return $default(
            _that.loading,
            _that.supported,
            _that.enabled,
            _that.available,
            _that.unavailableReason,
            _that.locationName,
            _that.lastSyncAt,
            _that.syncing,
            _that.interval);
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
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool loading,
            bool supported,
            bool enabled,
            bool available,
            CloudUnavailableReason? unavailableReason,
            String? locationName,
            DateTime? lastSyncAt,
            bool syncing,
            AutoBackupInterval interval)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CloudBackupState() when $default != null:
        return $default(
            _that.loading,
            _that.supported,
            _that.enabled,
            _that.available,
            _that.unavailableReason,
            _that.locationName,
            _that.lastSyncAt,
            _that.syncing,
            _that.interval);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CloudBackupState implements CloudBackupState {
  const _CloudBackupState(
      {this.loading = true,
      this.supported = false,
      this.enabled = false,
      this.available = false,
      this.unavailableReason,
      this.locationName,
      this.lastSyncAt,
      this.syncing = false,
      this.interval = AutoBackupInterval.daily});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool supported;
  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final bool available;
  @override
  final CloudUnavailableReason? unavailableReason;
  @override
  final String? locationName;
  @override
  final DateTime? lastSyncAt;
  @override
  @JsonKey()
  final bool syncing;
  @override
  @JsonKey()
  final AutoBackupInterval interval;

  /// Create a copy of CloudBackupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CloudBackupStateCopyWith<_CloudBackupState> get copyWith =>
      __$CloudBackupStateCopyWithImpl<_CloudBackupState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CloudBackupState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.supported, supported) ||
                other.supported == supported) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.lastSyncAt, lastSyncAt) ||
                other.lastSyncAt == lastSyncAt) &&
            (identical(other.syncing, syncing) || other.syncing == syncing) &&
            (identical(other.interval, interval) ||
                other.interval == interval));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      supported,
      enabled,
      available,
      unavailableReason,
      locationName,
      lastSyncAt,
      syncing,
      interval);

  @override
  String toString() {
    return 'CloudBackupState(loading: $loading, supported: $supported, enabled: $enabled, available: $available, unavailableReason: $unavailableReason, locationName: $locationName, lastSyncAt: $lastSyncAt, syncing: $syncing, interval: $interval)';
  }
}

/// @nodoc
abstract mixin class _$CloudBackupStateCopyWith<$Res>
    implements $CloudBackupStateCopyWith<$Res> {
  factory _$CloudBackupStateCopyWith(
          _CloudBackupState value, $Res Function(_CloudBackupState) _then) =
      __$CloudBackupStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool supported,
      bool enabled,
      bool available,
      CloudUnavailableReason? unavailableReason,
      String? locationName,
      DateTime? lastSyncAt,
      bool syncing,
      AutoBackupInterval interval});
}

/// @nodoc
class __$CloudBackupStateCopyWithImpl<$Res>
    implements _$CloudBackupStateCopyWith<$Res> {
  __$CloudBackupStateCopyWithImpl(this._self, this._then);

  final _CloudBackupState _self;
  final $Res Function(_CloudBackupState) _then;

  /// Create a copy of CloudBackupState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? loading = null,
    Object? supported = null,
    Object? enabled = null,
    Object? available = null,
    Object? unavailableReason = freezed,
    Object? locationName = freezed,
    Object? lastSyncAt = freezed,
    Object? syncing = null,
    Object? interval = null,
  }) {
    return _then(_CloudBackupState(
      loading: null == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      supported: null == supported
          ? _self.supported
          : supported // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      available: null == available
          ? _self.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
      unavailableReason: freezed == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as CloudUnavailableReason?,
      locationName: freezed == locationName
          ? _self.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSyncAt: freezed == lastSyncAt
          ? _self.lastSyncAt
          : lastSyncAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncing: null == syncing
          ? _self.syncing
          : syncing // ignore: cast_nullable_to_non_nullable
              as bool,
      interval: null == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as AutoBackupInterval,
    ));
  }
}

// dart format on
