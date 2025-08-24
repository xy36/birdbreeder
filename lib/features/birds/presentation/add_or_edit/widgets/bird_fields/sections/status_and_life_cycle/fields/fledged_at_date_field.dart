import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_date_property_field.dart';

class FledgedAtDateField extends StatelessWidget {
  const FledgedAtDateField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDatePropertyField(
      label: context.l10n.common__fledged,
      bird: bird,
      name: 'fledged_at_date_field',
      apply: (b, v) => b.copyWith(fledgedAt: v),
      select: (b) => b.fledgedAt,
      hint: context.l10n.common__fledged,
    );
  }
}
