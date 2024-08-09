import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/shared/widgets/shared_app_bar_with_drawer.dart';
import 'package:talker_flutter/talker_flutter.dart';

class FinancesScreen extends StatelessWidget {
  const FinancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: context.l10n.finances__title),
      body: TalkerScreen(
        talker: s1.get<LoggingService>().logger,
        theme: const TalkerScreenTheme(
          /// Your custom log colors
          logColors: {
            TalkerLogType.httpResponse: Color(0xFF26FF3C),
            TalkerLogType.error: Colors.redAccent,
            TalkerLogType.info: Color.fromARGB(255, 0, 255, 247),
          },
        ),
      ),
    );
  }
}
