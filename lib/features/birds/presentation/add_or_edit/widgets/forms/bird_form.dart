import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';

class BirdForm extends StatelessWidget {
  const BirdForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        final fields = [
          DataRow(
            label: context.l10n.common__ringnumber,
            value: state.bird.ringnumber,
          ),
          DataRow(
            label: context.l10n.common__species,
            value: state.bird.species?.name,
          ),
          DataRow(
            label: context.l10n.common__color,
            value: state.bird.color?.name,
          ),
          DataRow(
            label: context.l10n.common__cage,
            value: state.bird.cage?.name,
          ),
          // DataRow(
          //   label: context.l10n.common__father_ringnumber,
          //   value: state.bird.motherRingnumber,
          // ),
          // DataRow(
          //   label: context.l10n.common__mother_ringnumber,
          //   value: state.bird.fatherRingnumber,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(context.l10n.common__sex),
              state.bird.sex.getIcon(context),
            ],
          ),
          DataRow(
            label: context.l10n.common__origin,
            value: state.bird.born?.toDateFormat(context),
          ),
          // DataRow(
          //   label: context.l10n.common__born_date,
          //   value: state.bird.bought?.toDateFormat(context),
          // ),
          // DataRow(
          //   label: context.l10n.common__bought_date,
          //   value: state.bird.bought?.toDateFormat(context),
          // ),
          // DataRow(
          //   label: context.l10n.common__died_date,
          //   value: state.bird.died?.toDateFormat(context),
          // ),
          // DataRow(
          //   label: context.l10n.common__bought_price,
          //   value: state.bird. boughtPrice?.toString(),
          // ),
          // DataRow(
          //   label: context.l10n.common__sell_price_offer,
          //   value: state.bird.sellPriceOffer?.toString(),
          // ),
          // DataRow(
          //   label: context.l10n.common__sell_price_real,
          //   value: state.bird.sellPriceReal?.toString(),
          // ),
          // DataRow(
          //   label: context.l10n.common__is_for_sale,
          //   value: state.bird.isForSale ?? false
          //       ? context.l10n.common__yes
          //       : context.l10n.common__no,
          // ),
        ];

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: Text(
                  'Bird Information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...fields.map(
                (field) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 20,
                  ),
                  child: field,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class DataRow extends StatelessWidget {
  const DataRow({super.key, required this.label, required this.value});

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(value ?? ''),
      ],
    );
  }
}
