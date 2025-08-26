import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class SaleStatusField extends StatelessWidget {
  const SaleStatusField({
    super.key,
    required this.bird,
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
          if (status != null) {
            context.read<BirdCubit>().changeBird(
                  bird.copyWith(saleStatus: status),
                );
          }
        },
      ),
    );
  }
}
