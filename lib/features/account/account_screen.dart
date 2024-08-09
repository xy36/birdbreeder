import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/authentication/models/user.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/widgets/shared_app_bar_with_drawer.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: context.l10n.account__title),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserWidget(
              user:
                  s1.get<IAuthenticationService>().currentUser().asValue?.value,
            ),
            ElevatedButton(
              onPressed: () async {
                s1.get<IAuthenticationService>().signOut();
              },
              child: const Text('logout'),
            ),
          ],
        ),
      ),
    );
  }
}

class UserWidget extends StatelessWidget {
  const UserWidget({super.key, required this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Email: ${user?.email}'),
        Text('Username: ${user?.username}'),
        Text('Name: ${user?.name}'),
      ],
    );
  }
}
