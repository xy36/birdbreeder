// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_header_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PdfHeaderProfile {
  String get id;
  String get name;
  bool get isDefault;
  PdfHeaderLayout get layout;

  /// Content hash of the logo blob in the local `ImageStore`.
  String? get logoHash;
  PdfLogoSize get logoSize;
  String? get titleTemplate;
  String? get subtitleTemplate;
  bool get showAddressBlock;

  /// Replaces the address derived from the app-user contact. Null means
  /// "keep following the profile contact".
  String? get addressOverride;
  bool get showDate;
  bool get showCount;
  bool get showFilterSummary;
  bool get showBreederNumber;
  bool get showDivider;
  String? get footerTemplate;
  bool get showPageNumbers;
  DateTime? get created;
  DateTime? get updated;

  /// Create a copy of PdfHeaderProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PdfHeaderProfileCopyWith<PdfHeaderProfile> get copyWith =>
      _$PdfHeaderProfileCopyWithImpl<PdfHeaderProfile>(
          this as PdfHeaderProfile, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PdfHeaderProfile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.logoHash, logoHash) ||
                other.logoHash == logoHash) &&
            (identical(other.logoSize, logoSize) ||
                other.logoSize == logoSize) &&
            (identical(other.titleTemplate, titleTemplate) ||
                other.titleTemplate == titleTemplate) &&
            (identical(other.subtitleTemplate, subtitleTemplate) ||
                other.subtitleTemplate == subtitleTemplate) &&
            (identical(other.showAddressBlock, showAddressBlock) ||
                other.showAddressBlock == showAddressBlock) &&
            (identical(other.addressOverride, addressOverride) ||
                other.addressOverride == addressOverride) &&
            (identical(other.showDate, showDate) ||
                other.showDate == showDate) &&
            (identical(other.showCount, showCount) ||
                other.showCount == showCount) &&
            (identical(other.showFilterSummary, showFilterSummary) ||
                other.showFilterSummary == showFilterSummary) &&
            (identical(other.showBreederNumber, showBreederNumber) ||
                other.showBreederNumber == showBreederNumber) &&
            (identical(other.showDivider, showDivider) ||
                other.showDivider == showDivider) &&
            (identical(other.footerTemplate, footerTemplate) ||
                other.footerTemplate == footerTemplate) &&
            (identical(other.showPageNumbers, showPageNumbers) ||
                other.showPageNumbers == showPageNumbers) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        isDefault,
        layout,
        logoHash,
        logoSize,
        titleTemplate,
        subtitleTemplate,
        showAddressBlock,
        addressOverride,
        showDate,
        showCount,
        showFilterSummary,
        showBreederNumber,
        showDivider,
        footerTemplate,
        showPageNumbers,
        created,
        updated
      ]);

  @override
  String toString() {
    return 'PdfHeaderProfile(id: $id, name: $name, isDefault: $isDefault, layout: $layout, logoHash: $logoHash, logoSize: $logoSize, titleTemplate: $titleTemplate, subtitleTemplate: $subtitleTemplate, showAddressBlock: $showAddressBlock, addressOverride: $addressOverride, showDate: $showDate, showCount: $showCount, showFilterSummary: $showFilterSummary, showBreederNumber: $showBreederNumber, showDivider: $showDivider, footerTemplate: $footerTemplate, showPageNumbers: $showPageNumbers, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class $PdfHeaderProfileCopyWith<$Res> {
  factory $PdfHeaderProfileCopyWith(
          PdfHeaderProfile value, $Res Function(PdfHeaderProfile) _then) =
      _$PdfHeaderProfileCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      bool isDefault,
      PdfHeaderLayout layout,
      String? logoHash,
      PdfLogoSize logoSize,
      String? titleTemplate,
      String? subtitleTemplate,
      bool showAddressBlock,
      String? addressOverride,
      bool showDate,
      bool showCount,
      bool showFilterSummary,
      bool showBreederNumber,
      bool showDivider,
      String? footerTemplate,
      bool showPageNumbers,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class _$PdfHeaderProfileCopyWithImpl<$Res>
    implements $PdfHeaderProfileCopyWith<$Res> {
  _$PdfHeaderProfileCopyWithImpl(this._self, this._then);

  final PdfHeaderProfile _self;
  final $Res Function(PdfHeaderProfile) _then;

  /// Create a copy of PdfHeaderProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isDefault = null,
    Object? layout = null,
    Object? logoHash = freezed,
    Object? logoSize = null,
    Object? titleTemplate = freezed,
    Object? subtitleTemplate = freezed,
    Object? showAddressBlock = null,
    Object? addressOverride = freezed,
    Object? showDate = null,
    Object? showCount = null,
    Object? showFilterSummary = null,
    Object? showBreederNumber = null,
    Object? showDivider = null,
    Object? footerTemplate = freezed,
    Object? showPageNumbers = null,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      layout: null == layout
          ? _self.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as PdfHeaderLayout,
      logoHash: freezed == logoHash
          ? _self.logoHash
          : logoHash // ignore: cast_nullable_to_non_nullable
              as String?,
      logoSize: null == logoSize
          ? _self.logoSize
          : logoSize // ignore: cast_nullable_to_non_nullable
              as PdfLogoSize,
      titleTemplate: freezed == titleTemplate
          ? _self.titleTemplate
          : titleTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleTemplate: freezed == subtitleTemplate
          ? _self.subtitleTemplate
          : subtitleTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      showAddressBlock: null == showAddressBlock
          ? _self.showAddressBlock
          : showAddressBlock // ignore: cast_nullable_to_non_nullable
              as bool,
      addressOverride: freezed == addressOverride
          ? _self.addressOverride
          : addressOverride // ignore: cast_nullable_to_non_nullable
              as String?,
      showDate: null == showDate
          ? _self.showDate
          : showDate // ignore: cast_nullable_to_non_nullable
              as bool,
      showCount: null == showCount
          ? _self.showCount
          : showCount // ignore: cast_nullable_to_non_nullable
              as bool,
      showFilterSummary: null == showFilterSummary
          ? _self.showFilterSummary
          : showFilterSummary // ignore: cast_nullable_to_non_nullable
              as bool,
      showBreederNumber: null == showBreederNumber
          ? _self.showBreederNumber
          : showBreederNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      showDivider: null == showDivider
          ? _self.showDivider
          : showDivider // ignore: cast_nullable_to_non_nullable
              as bool,
      footerTemplate: freezed == footerTemplate
          ? _self.footerTemplate
          : footerTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      showPageNumbers: null == showPageNumbers
          ? _self.showPageNumbers
          : showPageNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _self.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PdfHeaderProfile].
extension PdfHeaderProfilePatterns on PdfHeaderProfile {
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
    TResult Function(_PdfHeaderProfile value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PdfHeaderProfile() when $default != null:
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
    TResult Function(_PdfHeaderProfile value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PdfHeaderProfile():
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
    TResult? Function(_PdfHeaderProfile value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PdfHeaderProfile() when $default != null:
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
            String id,
            String name,
            bool isDefault,
            PdfHeaderLayout layout,
            String? logoHash,
            PdfLogoSize logoSize,
            String? titleTemplate,
            String? subtitleTemplate,
            bool showAddressBlock,
            String? addressOverride,
            bool showDate,
            bool showCount,
            bool showFilterSummary,
            bool showBreederNumber,
            bool showDivider,
            String? footerTemplate,
            bool showPageNumbers,
            DateTime? created,
            DateTime? updated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PdfHeaderProfile() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.isDefault,
            _that.layout,
            _that.logoHash,
            _that.logoSize,
            _that.titleTemplate,
            _that.subtitleTemplate,
            _that.showAddressBlock,
            _that.addressOverride,
            _that.showDate,
            _that.showCount,
            _that.showFilterSummary,
            _that.showBreederNumber,
            _that.showDivider,
            _that.footerTemplate,
            _that.showPageNumbers,
            _that.created,
            _that.updated);
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
            String id,
            String name,
            bool isDefault,
            PdfHeaderLayout layout,
            String? logoHash,
            PdfLogoSize logoSize,
            String? titleTemplate,
            String? subtitleTemplate,
            bool showAddressBlock,
            String? addressOverride,
            bool showDate,
            bool showCount,
            bool showFilterSummary,
            bool showBreederNumber,
            bool showDivider,
            String? footerTemplate,
            bool showPageNumbers,
            DateTime? created,
            DateTime? updated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PdfHeaderProfile():
        return $default(
            _that.id,
            _that.name,
            _that.isDefault,
            _that.layout,
            _that.logoHash,
            _that.logoSize,
            _that.titleTemplate,
            _that.subtitleTemplate,
            _that.showAddressBlock,
            _that.addressOverride,
            _that.showDate,
            _that.showCount,
            _that.showFilterSummary,
            _that.showBreederNumber,
            _that.showDivider,
            _that.footerTemplate,
            _that.showPageNumbers,
            _that.created,
            _that.updated);
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
            String id,
            String name,
            bool isDefault,
            PdfHeaderLayout layout,
            String? logoHash,
            PdfLogoSize logoSize,
            String? titleTemplate,
            String? subtitleTemplate,
            bool showAddressBlock,
            String? addressOverride,
            bool showDate,
            bool showCount,
            bool showFilterSummary,
            bool showBreederNumber,
            bool showDivider,
            String? footerTemplate,
            bool showPageNumbers,
            DateTime? created,
            DateTime? updated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PdfHeaderProfile() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.isDefault,
            _that.layout,
            _that.logoHash,
            _that.logoSize,
            _that.titleTemplate,
            _that.subtitleTemplate,
            _that.showAddressBlock,
            _that.addressOverride,
            _that.showDate,
            _that.showCount,
            _that.showFilterSummary,
            _that.showBreederNumber,
            _that.showDivider,
            _that.footerTemplate,
            _that.showPageNumbers,
            _that.created,
            _that.updated);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PdfHeaderProfile extends PdfHeaderProfile {
  const _PdfHeaderProfile(
      {required this.id,
      required this.name,
      this.isDefault = false,
      this.layout = PdfHeaderLayout.logoLeft,
      this.logoHash,
      this.logoSize = PdfLogoSize.medium,
      this.titleTemplate,
      this.subtitleTemplate,
      this.showAddressBlock = true,
      this.addressOverride,
      this.showDate = true,
      this.showCount = true,
      this.showFilterSummary = true,
      this.showBreederNumber = true,
      this.showDivider = true,
      this.footerTemplate,
      this.showPageNumbers = true,
      this.created,
      this.updated})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isDefault;
  @override
  @JsonKey()
  final PdfHeaderLayout layout;

  /// Content hash of the logo blob in the local `ImageStore`.
  @override
  final String? logoHash;
  @override
  @JsonKey()
  final PdfLogoSize logoSize;
  @override
  final String? titleTemplate;
  @override
  final String? subtitleTemplate;
  @override
  @JsonKey()
  final bool showAddressBlock;

  /// Replaces the address derived from the app-user contact. Null means
  /// "keep following the profile contact".
  @override
  final String? addressOverride;
  @override
  @JsonKey()
  final bool showDate;
  @override
  @JsonKey()
  final bool showCount;
  @override
  @JsonKey()
  final bool showFilterSummary;
  @override
  @JsonKey()
  final bool showBreederNumber;
  @override
  @JsonKey()
  final bool showDivider;
  @override
  final String? footerTemplate;
  @override
  @JsonKey()
  final bool showPageNumbers;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;

  /// Create a copy of PdfHeaderProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PdfHeaderProfileCopyWith<_PdfHeaderProfile> get copyWith =>
      __$PdfHeaderProfileCopyWithImpl<_PdfHeaderProfile>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PdfHeaderProfile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.logoHash, logoHash) ||
                other.logoHash == logoHash) &&
            (identical(other.logoSize, logoSize) ||
                other.logoSize == logoSize) &&
            (identical(other.titleTemplate, titleTemplate) ||
                other.titleTemplate == titleTemplate) &&
            (identical(other.subtitleTemplate, subtitleTemplate) ||
                other.subtitleTemplate == subtitleTemplate) &&
            (identical(other.showAddressBlock, showAddressBlock) ||
                other.showAddressBlock == showAddressBlock) &&
            (identical(other.addressOverride, addressOverride) ||
                other.addressOverride == addressOverride) &&
            (identical(other.showDate, showDate) ||
                other.showDate == showDate) &&
            (identical(other.showCount, showCount) ||
                other.showCount == showCount) &&
            (identical(other.showFilterSummary, showFilterSummary) ||
                other.showFilterSummary == showFilterSummary) &&
            (identical(other.showBreederNumber, showBreederNumber) ||
                other.showBreederNumber == showBreederNumber) &&
            (identical(other.showDivider, showDivider) ||
                other.showDivider == showDivider) &&
            (identical(other.footerTemplate, footerTemplate) ||
                other.footerTemplate == footerTemplate) &&
            (identical(other.showPageNumbers, showPageNumbers) ||
                other.showPageNumbers == showPageNumbers) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        isDefault,
        layout,
        logoHash,
        logoSize,
        titleTemplate,
        subtitleTemplate,
        showAddressBlock,
        addressOverride,
        showDate,
        showCount,
        showFilterSummary,
        showBreederNumber,
        showDivider,
        footerTemplate,
        showPageNumbers,
        created,
        updated
      ]);

  @override
  String toString() {
    return 'PdfHeaderProfile(id: $id, name: $name, isDefault: $isDefault, layout: $layout, logoHash: $logoHash, logoSize: $logoSize, titleTemplate: $titleTemplate, subtitleTemplate: $subtitleTemplate, showAddressBlock: $showAddressBlock, addressOverride: $addressOverride, showDate: $showDate, showCount: $showCount, showFilterSummary: $showFilterSummary, showBreederNumber: $showBreederNumber, showDivider: $showDivider, footerTemplate: $footerTemplate, showPageNumbers: $showPageNumbers, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class _$PdfHeaderProfileCopyWith<$Res>
    implements $PdfHeaderProfileCopyWith<$Res> {
  factory _$PdfHeaderProfileCopyWith(
          _PdfHeaderProfile value, $Res Function(_PdfHeaderProfile) _then) =
      __$PdfHeaderProfileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      bool isDefault,
      PdfHeaderLayout layout,
      String? logoHash,
      PdfLogoSize logoSize,
      String? titleTemplate,
      String? subtitleTemplate,
      bool showAddressBlock,
      String? addressOverride,
      bool showDate,
      bool showCount,
      bool showFilterSummary,
      bool showBreederNumber,
      bool showDivider,
      String? footerTemplate,
      bool showPageNumbers,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class __$PdfHeaderProfileCopyWithImpl<$Res>
    implements _$PdfHeaderProfileCopyWith<$Res> {
  __$PdfHeaderProfileCopyWithImpl(this._self, this._then);

  final _PdfHeaderProfile _self;
  final $Res Function(_PdfHeaderProfile) _then;

  /// Create a copy of PdfHeaderProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isDefault = null,
    Object? layout = null,
    Object? logoHash = freezed,
    Object? logoSize = null,
    Object? titleTemplate = freezed,
    Object? subtitleTemplate = freezed,
    Object? showAddressBlock = null,
    Object? addressOverride = freezed,
    Object? showDate = null,
    Object? showCount = null,
    Object? showFilterSummary = null,
    Object? showBreederNumber = null,
    Object? showDivider = null,
    Object? footerTemplate = freezed,
    Object? showPageNumbers = null,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_PdfHeaderProfile(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      layout: null == layout
          ? _self.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as PdfHeaderLayout,
      logoHash: freezed == logoHash
          ? _self.logoHash
          : logoHash // ignore: cast_nullable_to_non_nullable
              as String?,
      logoSize: null == logoSize
          ? _self.logoSize
          : logoSize // ignore: cast_nullable_to_non_nullable
              as PdfLogoSize,
      titleTemplate: freezed == titleTemplate
          ? _self.titleTemplate
          : titleTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleTemplate: freezed == subtitleTemplate
          ? _self.subtitleTemplate
          : subtitleTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      showAddressBlock: null == showAddressBlock
          ? _self.showAddressBlock
          : showAddressBlock // ignore: cast_nullable_to_non_nullable
              as bool,
      addressOverride: freezed == addressOverride
          ? _self.addressOverride
          : addressOverride // ignore: cast_nullable_to_non_nullable
              as String?,
      showDate: null == showDate
          ? _self.showDate
          : showDate // ignore: cast_nullable_to_non_nullable
              as bool,
      showCount: null == showCount
          ? _self.showCount
          : showCount // ignore: cast_nullable_to_non_nullable
              as bool,
      showFilterSummary: null == showFilterSummary
          ? _self.showFilterSummary
          : showFilterSummary // ignore: cast_nullable_to_non_nullable
              as bool,
      showBreederNumber: null == showBreederNumber
          ? _self.showBreederNumber
          : showBreederNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      showDivider: null == showDivider
          ? _self.showDivider
          : showDivider // ignore: cast_nullable_to_non_nullable
              as bool,
      footerTemplate: freezed == footerTemplate
          ? _self.footerTemplate
          : footerTemplate // ignore: cast_nullable_to_non_nullable
              as String?,
      showPageNumbers: null == showPageNumbers
          ? _self.showPageNumbers
          : showPageNumbers // ignore: cast_nullable_to_non_nullable
              as bool,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _self.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
