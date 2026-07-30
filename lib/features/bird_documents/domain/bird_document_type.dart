import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:flutter/widgets.dart';

/// The single-bird documents the app can generate as a PDF.
enum BirdDocumentType {
  /// Steckbrief: all master data of one bird on one page.
  profile,

  /// Abstammungsnachweis: three-generation ancestor chart.
  pedigree,

  /// Abgabebeleg: transfer/sale receipt with signature lines.
  saleReceipt;

  String label(Translations t) => switch (this) {
        profile => t.documents.types.profile.label,
        pedigree => t.documents.types.pedigree.label,
        saleReceipt => t.documents.types.sale_receipt.label,
      };

  String description(Translations t) => switch (this) {
        profile => t.documents.types.profile.description,
        pedigree => t.documents.types.pedigree.description,
        saleReceipt => t.documents.types.sale_receipt.description,
      };

  /// Localized stem of the suggested file name, e.g. `steckbrief`.
  String fileStem(Translations t) => switch (this) {
        profile => t.documents.types.profile.file_name,
        pedigree => t.documents.types.pedigree.file_name,
        saleReceipt => t.documents.types.sale_receipt.file_name,
      };

  IconData get icon => switch (this) {
        profile => AppIcons.description,
        pedigree => AppIcons.pedigree,
        saleReceipt => AppIcons.receiptLongOutlined,
      };
}
