part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.idle() = LoginIdle;
  const factory LoginState.error() = LoginError;
}
