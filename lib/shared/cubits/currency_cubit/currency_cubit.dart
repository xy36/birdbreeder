import 'package:birdbreeder/services/currency/currency_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Holds the ISO 4217 code every monetary amount is rendered in.
///
/// Starts on the device's currency so the first frame is already plausible,
/// then settles on the stored choice once preferences have been read.
class CurrencyCubit extends Cubit<String> {
  CurrencyCubit() : super(CurrencyService.deviceDefault()) {
    _load();
  }

  Future<void> _load() async {
    final stored = await CurrencyService.load();
    if (stored != state) emit(stored);
  }

  /// Switches the display currency and remembers it.
  Future<void> setCurrency(String code) async {
    if (code == state) return;
    emit(code);
    await CurrencyService.save(code);
  }
}
