import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:birdbreeder/features/export/domain/export_format.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

/// Writes export payloads to a temporary file and hands them to the platform
/// share sheet.
///
/// Exports are throwaway artefacts — the user picks the destination (mail,
/// cloud, printer) in the share sheet — so they live in the temp directory and
/// never in the app's documents folder, which is what the backup walks.
class ExportFileWriter {
  const ExportFileWriter._();

  /// Writes [content] as UTF-8 and returns the created file.
  static Future<File> writeText({
    required String content,
    required String fileName,
    required ExportFormat format,
  }) =>
      writeBytes(
        bytes: Uint8List.fromList(utf8.encode(content)),
        fileName: fileName,
        format: format,
      );

  /// [fileName] is the stem without extension, already sanitized by
  /// `ExportFileName`; only the extension is appended here.
  static Future<File> writeBytes({
    required Uint8List bytes,
    required String fileName,
    required ExportFormat format,
  }) async {
    final directory = await getTemporaryDirectory();
    final file = File(
      p.join(directory.path, '$fileName.${format.fileExtension}'),
    );
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }

  /// Opens the platform share sheet for an already written export.
  static Future<ShareResult> share(File file, ExportFormat format) =>
      Share.shareXFiles([XFile(file.path, mimeType: format.mimeType)]);

  /// Whether [result] means the export actually left the app.
  ///
  /// Backing out of the share sheet is a deliberate choice, so reporting
  /// success afterwards would be a lie. Many Android targets cannot report
  /// what the user picked and answer `unavailable`; that counts as shared,
  /// because the alternative is staying silent on every successful share.
  static bool wasShared(ShareResult result) =>
      result.status != ShareResultStatus.dismissed;
}
