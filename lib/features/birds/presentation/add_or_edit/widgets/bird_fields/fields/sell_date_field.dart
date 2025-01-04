import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/field_templates/bird_date_field.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class SellDateField extends StatelessWidget {
  const SellDateField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.l10n.common__sell_date,
      child: BirdDateField(
        name: 'sell_date_field',
        initialValue: bird.sell,
        onChanged: (sellDate) {
          context.read<BirdCubit>().changeBird(
                bird.copyWith(sell: sellDate),
              );
        },
      ),
    );
  }
}
