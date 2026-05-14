import 'package:birdbreeder/services/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system) {
    _load();
  }

  Future<void> _load() async {
    final mode = await ThemeService.load();
    if (mode != state) emit(mode);
  }

  Future<void> setMode(ThemeMode mode) async {
    if (mode == state) return;
    emit(mode);
    await ThemeService.save(mode);
  }
}
