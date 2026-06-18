import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class SaleStatusField extends StatelessWidget {
  const SaleStatusField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.tr.common.sale_status.name,
      hasChangedIndicator:
          bird.saleStatus != context.read<BirdCubit>().initialBird?.saleStatus,
      child: GroupedRadio(
        value: bird.saleStatus,
        options: <FormBuilderFieldOption<SaleStatus>>[
          for (final status in SaleStatus.values)
            FormBuilderFieldOption<SaleStatus>(
              value: status,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(status.getDisplayName(context)),
                  Text(status.getSubtitle(context), style: context.bodySmall),
                ],
              ),
            ),
        ],
        orientation: OptionsOrientation.vertical,
        onChanged: (status) {
          if (status == null) return;
          final isSold = status == SaleStatus.sold;
          context.read<BirdCubit>().changeBird(
                bird.copyWith(
                  saleStatus: status,
                  // Sold details only exist while sold. Auto-stamp soldAt when
                  // entering the sold state; clear all sale details when leaving
                  // it so no hidden stale values linger.
                  soldAt: isSold ? (bird.soldAt ?? DateTime.now()) : null,
                  soldToId: isSold ? bird.soldToId : null,
                  finalPrice: isSold ? bird.finalPrice : null,
                ),
              );
        },
      ),
    );
  }
}
