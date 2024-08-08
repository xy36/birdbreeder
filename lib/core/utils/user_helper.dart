import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/injection.dart';

class UserHelper {
  static String? insertUser() {
    final s = s1.get<IAuthenticationService>().currentUser().asValue?.value?.id;
    return s;
  }
}
