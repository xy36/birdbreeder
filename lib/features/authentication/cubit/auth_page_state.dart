import 'package:birdbreeder/models/authentication/entity/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_page_state.freezed.dart';

@freezed
abstract class AuthPageState with _$AuthPageState {
  const factory AuthPageState({
    @Default(false) bool isLoading,
    User? user,
  }) = _AuthPageState;
}
