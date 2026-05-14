part of 'account_cubit.dart';

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState.idle() = AccountIdle;
}
