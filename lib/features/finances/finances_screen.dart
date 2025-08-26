import 'package:birdbreeder/common_imports.dart';

class FinancesScreen extends StatelessWidget {
  const FinancesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: context.tr.finances.title),
    );
  }
}
