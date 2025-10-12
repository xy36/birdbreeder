import 'package:birdbreeder/services/authentication/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_page_state.freezed.dart';

@freezed
class AuthPageState with _$AuthPageState {
  const factory AuthPageState({
    @Default(false) bool isLoading,
    String? error,
    User? user,
  }) = _AuthPageState;
}
