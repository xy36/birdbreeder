import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';

class CreatedInformation extends StatelessWidget {
  const CreatedInformation({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        context.l10n.bird__created_information(
          bird.created.toDateFormat(context),
          bird.created.toTimeFormat(context),
        ),
      ),
    );
  }
}
