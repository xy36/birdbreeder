import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationService) : super(const LoginState.idle());

  final IAuthenticationService _authenticationService;

  Future<void> login(String email, String password) async {
    emit(const LoginState.loading());

    final userResult = await _authenticationService.signInWithEmailAndPassword(
      email,
      password,
    );

    if (userResult.isError) {
      emit(const LoginState.error());
    }

    emit(const LoginState.idle());
  }
}
