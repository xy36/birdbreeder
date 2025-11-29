import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_page_event.freezed.dart';

@freezed
class AuthPageEvent with _$AuthPageEvent {
  const factory AuthPageEvent.signUpSucceeded() = AuthPageEventSignUpSucceeded;
  const factory AuthPageEvent.signUpFailed() = AuthPageEventSignUpFailed;
  const factory AuthPageEvent.signInFailed() = AuthPageEventSignInFailed;
}
