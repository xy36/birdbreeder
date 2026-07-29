import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf_header_profile.freezed.dart';

/// Where the logo sits relative to the text block.
enum PdfHeaderLayout {
  /// Logo left, title and address to its right.
  logoLeft,

  /// Everything centred, logo on top.
  centered,

  /// Address block left, logo right — closest to a classic German letterhead.
  addressLeftLogoRight,
}

enum PdfLogoSize {
  small,
  medium,
  large;

  /// Rendered height in PDF points.
  double get points => switch (this) {
        PdfLogoSize.small => 28,
        PdfLogoSize.medium => 44,
        PdfLogoSize.large => 64,
      };
}

/// A reusable letterhead for exported PDFs.
///
/// Kept deliberately as plain data with exactly one renderer, so the editor
/// preview and the exported document can never drift apart. One profile serves
/// every list type: the `{{liste}}` placeholder resolves to whichever list is
/// being exported, which is why a breeder does not need a near-identical
/// profile per screen.
@freezed
abstract class PdfHeaderProfile with _$PdfHeaderProfile {
  const factory PdfHeaderProfile({
    required String id,
    required String name,
    @Default(false) bool isDefault,
    @Default(PdfHeaderLayout.logoLeft) PdfHeaderLayout layout,

    /// Content hash of the logo blob in the local `ImageStore`.
    String? logoHash,
    @Default(PdfLogoSize.medium) PdfLogoSize logoSize,
    String? titleTemplate,
    String? subtitleTemplate,
    @Default(true) bool showAddressBlock,

    /// Replaces the address derived from the app-user contact. Null means
    /// "keep following the profile contact".
    String? addressOverride,
    @Default(true) bool showDate,
    @Default(true) bool showCount,
    @Default(true) bool showFilterSummary,
    @Default(true) bool showBreederNumber,
    @Default(true) bool showDivider,
    String? footerTemplate,
    @Default(true) bool showPageNumbers,
    DateTime? created,
    DateTime? updated,
  }) = _PdfHeaderProfile;

  const PdfHeaderProfile._();

  /// A blank profile, pre-filled with the placeholders most breeders want.
  factory PdfHeaderProfile.create({required String name}) => PdfHeaderProfile(
        id: '',
        name: name,
        titleTemplate: '{{liste}}',
        subtitleTemplate: '{{zuechter}}',
      );

  /// The implicit profile used when a breeder has never opened the editor:
  /// title from the list being exported, everything else from their contact.
  static const fallback = PdfHeaderProfile(
    id: '',
    name: '',
    titleTemplate: '{{liste}}',
  );

  bool get hasLogo => logoHash != null && logoHash!.isNotEmpty;
}
