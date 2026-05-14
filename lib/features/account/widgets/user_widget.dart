import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/authentication/entity/user.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({required this.user, super.key});

  final User? user;

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.account.user;
    return Column(
      children: [
        Text(tr.email(Value: user?.email ?? '')),
        Text(tr.first_name(Value: user?.firstName ?? '')),
        Text(tr.last_name(Value: user?.lastName ?? '')),
      ],
    );
  }
}
