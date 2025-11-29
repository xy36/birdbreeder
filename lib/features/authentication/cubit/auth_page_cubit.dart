import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/authentication/cubit/auth_page_event.dart';
import 'package:birdbreeder/features/authentication/cubit/auth_page_state.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

class AuthPageCubit extends Cubit<AuthPageState>
    with BlocPresentationMixin<AuthPageState, AuthPageEvent> {
  AuthPageCubit() : super(const AuthPageState());

  final IAuthenticationService _auth = s1.get<IAuthenticationService>();

  Future<void> signIn(String email, String password) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    final res = await _auth.signInWithEmailAndPassword(email, password);

    if (res.isError) {
      emitPresentation(const AuthPageEvent.signInFailed());

      return emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    }

    emit(state.copyWith(isLoading: false, user: res.asValue!.value));
  }

  Future<void> signUp(
    String email,
    String password,
    String firstName,
    String lastName,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    final res = await _auth.signUpWithEmailAndPassword(
      email,
      password,
      firstName,
      lastName,
    );

    emitPresentation(
      res.isError
          ? const AuthPageEvent.signUpFailed()
          : const AuthPageEvent.signUpSucceeded(),
    );

    if (res.isError) {
      return emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    }

    emit(state.copyWith(isLoading: false, user: res.asValue!.value));
  }
}
