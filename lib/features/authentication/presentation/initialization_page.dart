import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class InitializationPage extends StatelessWidget {
  const InitializationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Initiliaize Page')),
      body: Center(
        child: FutureBuilder(
          future: Future.delayed(
            const Duration(seconds: 5),
          ), // s1.get<SpeciesCubit>().load(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const Text('Initialization Done');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
