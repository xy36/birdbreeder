import 'dart:io';
import 'dart:typed_data';

import 'package:birdbreeder/features/export/data/csv_exporter.dart';
import 'package:birdbreeder/features/export/data/export_file_writer.dart';
import 'package:birdbreeder/features/export/data/pdf_fonts.dart';
import 'package:birdbreeder/features/export/data/pdf_list_exporter.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/features/export/domain/export_format.dart';
import 'package:birdbreeder/features/export/domain/export_request.dart';
import 'package:birdbreeder/features/export/presentation/cubit/export_cubit_event.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:birdbreeder/services/images/image_store.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'export_cubit.freezed.dart';
part 'export_state.dart';

/// Renders an [ExportRequest] to a file and opens the share sheet.
///
/// The cubit is intentionally not generic: it is provided once for the whole
/// app and the row type only matters inside [export], which stays generic.
/// That keeps `BlocProvider<ExportCubit>` free of type arguments at every call
/// site.
class ExportCubit extends Cubit<ExportState>
    with BlocPresentationMixin<ExportState, ExportCubitEvent> {
  ExportCubit() : super(const ExportState.idle());

  /// Writes [request] in [format] using [preset] and hands the file to the
  /// share sheet.
  Future<void> export<T>({
    required ExportRequest<T> request,
    required ExportPreset<T> preset,
    required ExportFormat format,
    required String fileName,
    required Translations t,
    PdfHeaderProfile? profile,
  }) async {
    if (request.isEmpty) {
      emitPresentation(const ExportCubitEvent.empty());
      return;
    }

    emit(const ExportState.running());
    try {
      final file = switch (format) {
        ExportFormat.csv => await _writeCsv(preset, request, fileName, t),
        ExportFormat.pdf =>
          await _writePdf(request, preset, fileName, t, profile),
      };
      final result = await ExportFileWriter.share(file, format);
      if (!ExportFileWriter.wasShared(result)) return;

      emitPresentation(ExportCubitEvent.succeeded(file.uri.pathSegments.last));
    } on Exception catch (e) {
      emitPresentation(ExportCubitEvent.failed(e.toString()));
    } finally {
      emit(const ExportState.idle());
    }
  }

  /// Renders a single-document PDF via [buildBytes] and hands the file to
  /// the share sheet.
  ///
  /// [buildBytes] runs inside the guard so assembly failures surface through
  /// the same presentation events the list exports use.
  Future<void> exportDocument({
    required Future<Uint8List> Function() buildBytes,
    required String fileName,
  }) async {
    emit(const ExportState.running());
    try {
      final file = await ExportFileWriter.writeBytes(
        bytes: await buildBytes(),
        fileName: fileName,
        format: ExportFormat.pdf,
      );
      final result = await ExportFileWriter.share(file, ExportFormat.pdf);
      if (!ExportFileWriter.wasShared(result)) return;

      emitPresentation(ExportCubitEvent.succeeded(file.uri.pathSegments.last));
    } on Exception catch (e) {
      emitPresentation(ExportCubitEvent.failed(e.toString()));
    } finally {
      emit(const ExportState.idle());
    }
  }

  Future<File> _writeCsv<T>(
    ExportPreset<T> preset,
    ExportRequest<T> request,
    String fileName,
    Translations t,
  ) =>
      ExportFileWriter.writeText(
        content: CsvExporter.build(
          rows: request.items,
          columns: preset.columns,
          t: t,
        ),
        fileName: fileName,
        format: ExportFormat.csv,
      );

  Future<File> _writePdf<T>(
    ExportRequest<T> request,
    ExportPreset<T> preset,
    String fileName,
    Translations t,
    PdfHeaderProfile? profile,
  ) async {
    final header = profile ?? PdfHeaderProfile.fallback;
    final bytes = await PdfListExporter.build(
      rows: request.items,
      columns: preset.columns,
      exportContext: ExportContext(
        listTitle: request.listTitle,
        rowCount: request.items.length,
        generatedAt: DateTime.now(),
        breeder: _appUser,
        activeFilters: request.activeFilters,
      ),
      t: t,
      fonts: await PdfFonts.load(),
      profile: header,
      logoBytes: await loadLogo(header),
      summary: request.summary?.call(request.items, t) ?? const [],
    );

    return ExportFileWriter.writeBytes(
      bytes: bytes,
      fileName: fileName,
      format: ExportFormat.pdf,
    );
  }

  /// Reads the logo blob for [profile], or null when it has none.
  ///
  /// A missing blob is not an error: the hash may point at an image that has
  /// not been restored from the cloud yet, and a letterhead without its logo
  /// still beats a failed export.
  static Future<Uint8List?> loadLogo(PdfHeaderProfile profile) async {
    final hash = profile.logoHash;
    if (hash == null || hash.isEmpty) return null;

    final file = await ImageStore.get(hash);
    return file?.readAsBytes();
  }

  /// The contact flagged as the app user, source of the PDF letterhead.
  Contact? get _appUser =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.contacts.appUser;
}
