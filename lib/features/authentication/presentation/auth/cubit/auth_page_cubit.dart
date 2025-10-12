import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/authentication/presentation/auth/cubit/auth_page_state.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:pocketbase/pocketbase.dart';

class AuthPageCubit extends Cubit<AuthPageState> {
  AuthPageCubit() : super(const AuthPageState());

  final _auth = s1.get<IAuthenticationService>();

  Future<void> signIn(String email, String password) async {
    emit(state.copyWith(isLoading: true, error: null));
    final res = await _auth.signInWithEmailAndPassword(email, password);

    if (res.isError) {
      return emit(
        state.copyWith(
          isLoading: false,
          error: _errorMessage(res.asError!.error),
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
    emit(state.copyWith(isLoading: true, error: null));
    final res = await _auth.signUpWithEmailAndPassword(
      email,
      password,
      firstName,
      lastName,
    );

    if (res.isError) {
      return emit(
        state.copyWith(
          isLoading: false,
          error: _errorMessage(res.asError!.error),
        ),
      );
    }

    emit(state.copyWith(isLoading: false, user: res.asValue!.value));
  }

  String _errorMessage(Object err) {
    if (err is ClientException) {
      final msg = err.response['message']?.toString();
      if (msg != null && msg.isNotEmpty) return msg;
      return 'PocketBase error (HTTP ${err.statusCode})';
    }
    return err.toString();
  }
}
