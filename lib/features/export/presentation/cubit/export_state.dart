part of 'export_cubit.dart';

@freezed
abstract class ExportState with _$ExportState {
  const factory ExportState.idle() = ExportIdle;
  const factory ExportState.running() = ExportRunning;
}

extension ExportStateX on ExportState {
  bool get isRunning => this is ExportRunning;
}
