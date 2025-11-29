import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';

@RoutePage()
class InitializationPage extends StatelessWidget {
  const InitializationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Initiliaize Page')),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
