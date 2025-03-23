import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/constants.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/field_templates/bird_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/field_templates/bird_text_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/cage_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/color_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/parent_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/species_field.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/widgets/bottom_dropdown_search.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class BirdFields extends StatelessWidget {
  const BirdFields({super.key, required this.bird});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize.getScreenSize(context);
    return SingleChildScrollView(
      child: BlocBuilder<BirdCubit, BirdState>(
        builder: (context, state) {
          final fields = [
            FieldWithLabel(
              label: context.l10n.common__ringnumber,
              child: RingnumberField(bird: bird),
            ),
            FieldWithLabel(
              label: context.l10n.common__cage,
              child: CageField(bird: bird),
            ),
            FieldWithLabel(
              label: context.l10n.common__species,
              child: SpeciesField(
                bird: bird,
              ),
            ),
            Row(
              spacing: 16,
              children: [
                Expanded(
                  flex: 4,
                  child: FieldWithLabel(
                    label: context.l10n.common__color,
                    child: ColorField(
                      bird: bird,
                    ),
                  ),
                ),
                Expanded(
                  child: FieldWithLabel(
                    label: context.l10n.common__sex,
                    child: SexField(bird: bird),
                  ),
                ),
              ],
            ),
            ParentField(initialBird: bird, parentType: ParentType.father),
            ParentField(initialBird: bird, parentType: ParentType.mother),
            FieldWithLabel(
              label: context.l10n.common__born_date,
              child: BornDateField(bird: bird),
            ),
            FieldWithLabel(
              label: context.l10n.common__bought_date,
              child: BoughtDateField(bird: bird),
            ),
            FieldWithLabel(
              label: context.l10n.common__sell_date,
              child: SellDateField(bird: bird),
            ),
            FieldWithLabel(
              label: context.l10n.common__died_date,
              child: DiedDateField(bird: bird),
            ),
            FieldWithLabel(
              label: context.l10n.common__bought_price,
              child: BoughtPriceField(bird: bird),
            ),
            FieldWithLabel(
              label: context.l10n.common__sell_price_offer,
              child: SellPriceOfferField(bird: bird),
            ),
            FieldWithLabel(
              label: context.l10n.common__sell_price_real,
              child: SellPriceRealField(bird: bird),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                context.l10n.bird__created_information(
                  bird.created.toDateFormat(context),
                  bird.created.toTimeFormat(context),
                ),
              ),
            ),
          ];
          return Column(
            spacing: 16,
            children: <Widget>[
              ...fields.map(
                (e) => Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.drawerDialogInsetPadding,
                  ),
                  child: e,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class SellPriceRealField extends StatelessWidget {
  const SellPriceRealField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdTextField(
      name: 'sell_price_real_field',
      initialValue: bird.sellPriceReal?.toString(),
      onChanged: (sellPriceReal) {
        context.read<BirdCubit>().changeBird(
              bird.copyWith(
                sellPriceReal: double.tryParse(sellPriceReal!),
              ),
            );
      },
      suffixText: currencySymbol,
    );
  }
}

class SellPriceOfferField extends StatelessWidget {
  const SellPriceOfferField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdTextField(
      name: 'sell_price_offer_field',
      initialValue: bird.sellPriceOffer?.toString(),
      onChanged: (sellPriceOffer) {
        context.read<BirdCubit>().changeBird(
              bird.copyWith(
                sellPriceOffer: double.tryParse(sellPriceOffer!),
              ),
            );
      },
      suffixText: currencySymbol,
    );
  }
}

class BoughtPriceField extends StatelessWidget {
  const BoughtPriceField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdTextField(
      name: 'bought_price_field',
      initialValue: bird.boughtPrice?.toString(),
      onChanged: (boughtPrice) {
        context.read<BirdCubit>().changeBird(
              bird.copyWith(
                boughtPrice: double.tryParse(boughtPrice!),
              ),
            );
      },
      suffixText: currencySymbol,
    );
  }
}

class DiedDateField extends StatelessWidget {
  const DiedDateField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDateField(
      name: 'died_date_field',
      initialValue: bird.died,
      onChanged: (diedDate) {
        context.read<BirdCubit>().changeBird(
              bird.copyWith(died: diedDate),
            );
      },
    );
  }
}

class SellDateField extends StatelessWidget {
  const SellDateField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDateField(
      name: 'sell_date_field',
      initialValue: bird.sell,
      onChanged: (sellDate) {
        context.read<BirdCubit>().changeBird(
              bird.copyWith(sell: sellDate),
            );
      },
    );
  }
}

class BoughtDateField extends StatelessWidget {
  const BoughtDateField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDateField(
      name: 'bought_date_field',
      initialValue: bird.bought,
      onChanged: (boughtDate) {
        context.read<BirdCubit>().changeBird(
              bird.copyWith(bought: boughtDate),
            );
      },
    );
  }
}

class BornDateField extends StatelessWidget {
  const BornDateField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdDateField(
      name: 'born_date_field',
      initialValue: bird.born,
      onChanged: (bornDate) {
        context.read<BirdCubit>().changeBird(bird.copyWith(born: bornDate));
      },
    );
  }
}

class SexField extends StatelessWidget {
  const SexField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BottomDropdownSearch<Sex>(
      title: 'Sex',
      searchHintText: 'Search',
      showSearchBox: false,
      itemAsString: (item) => item.getTranslatedName(context),
      selectedItem: bird.sex,
      onChanged: (sex) {
        context.read<BirdCubit>().changeBird(
              bird.copyWith(sex: sex ?? Sex.unknown),
            );
      },
      dropdownBuilder: (context, sex) => (sex ?? Sex.unknown).getIcon(context),
      items: Sex.values,
      itemBuilder: (context, sex, _) => ListTile(
        title: Text(sex.getTranslatedName(context)),
        leading: sex.getIcon(context),
      ),
    );
  }
}

class RingnumberField extends StatelessWidget {
  const RingnumberField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return BirdTextField(
      name: 'ringnumber_field',
      hint: context.l10n.common__ringnumber,
      initialValue: bird.ringnumber,
      onChanged: (ringnumber) {
        context.read<BirdCubit>().changeBird(
              bird.copyWith(ringnumber: ringnumber),
            );
      },
    );
  }
}
