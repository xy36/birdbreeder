import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/i18n/translations.g.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({required this.fileName, super.key});

  final String fileName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(t.csv_import.reading(FileName: fileName)),
        ],
      ),
    );
  }
}
