import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/field_templates/bird_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/field_templates/bird_dropdown_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/field_templates/bird_text_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/edit_bird_form/cage_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/edit_bird_form/color_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/edit_bird_form/species_field.dart';

class BirdFields extends StatelessWidget {
  const BirdFields({super.key, required this.bird});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: BlocBuilder<BirdBloc, BirdState>(
        builder: (context, state) {
          return Column(
            children: <Widget>[
              BirdTextField(
                name: 'ringnumber_field',
                label: context.l10n.common__ringnumber,
                initialValue: bird.ringnumber,
                onChanged: (ringnumber) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(ringnumber: ringnumber),
                        ),
                      );
                },
              ),
              CageField(bird: bird, birdResources: state.birdResources),
              SpeciesField(bird: bird, birdResources: state.birdResources),
              ColorField(bird: bird, birdResources: state.birdResources),
              BirdTextField(
                name: 'father_field',
                label: context.l10n.common__father_ringnumber,
                initialValue: bird.father,
                onChanged: (fatherRingnumber) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(father: fatherRingnumber),
                        ),
                      );
                },
              ),
              BirdTextField(
                name: 'mother_field',
                label: context.l10n.common__mother_ringnumber,
                initialValue: bird.mother,
                onChanged: (motherRingnumber) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(mother: motherRingnumber),
                        ),
                      );
                },
              ),
              // BirdDropdownField<Origin>(
              //   name: 'origin_field',
              //   label: context.l10n.common__origin,
              //   initialValue: bird.origin,
              //   onChanged: (origin) {
              //     context.read<BirdBloc>().add(
              //           BirdEvent.change(bird: bird.copyWith(origin: origin)),
              //         );
              //   },
              //   items: Origin.values
              //       .map(
              //         (e) => DropdownMenuItem(
              //           value: e,
              //           child: Text(e.name(context)),
              //         ),
              //       )
              //       .toList(),
              // ),
              BirdDropdownField<Sex>(
                name: 'sex_field',
                label: context.l10n.common__sex,
                initialValue: bird.sex,
                onChanged: (sex) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(sex: sex ?? Sex.unknown),
                        ),
                      );
                },
                items: Sex.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.getTranslatedName(context)),
                      ),
                    )
                    .toList(),
              ),
              BirdDateField(
                name: 'born_date_field',
                label: context.l10n.common__born_date,
                initialValue: bird.born,
                onChanged: (bornDate) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(born: bornDate),
                        ),
                      );
                },
              ),
              // BirdDateField(
              //   name: 'bought_date_field',
              //   label: context.l10n.common__bought_date,
              //   initialValue: bird.bought,
              //   onChanged: (boughtDate) {
              //     context.read<BirdBloc>().add(
              //           BirdEvent.change(
              //             bird: bird.copyWith(bought: boughtDate),
              //           ),
              //         );
              //   },
              // ),
              // BirdDateField(
              //   name: 'sell_date_field',
              //   label: context.l10n.common__sell_date,
              //   initialValue: bird.sellDate,
              //   onChanged: (sellDate) {
              //     context.read<BirdBloc>().add(
              //           BirdEvent.change(
              //             bird: bird.copyWith(sellDate: sellDate),
              //           ),
              //         );
              //   },
              // ),
              // BirdDateField(
              //   name: 'died_date_field',
              //   label: context.l10n.common__died_date,
              //   initialValue: bird.diedDate,
              //   onChanged: (diedDate) {
              //     context.read<BirdBloc>().add(
              //           BirdEvent.change(
              //             bird: bird.copyWith(diedDate: diedDate),
              //           ),
              //         );
              //   },
              // ),
              // BirdTextField(
              //   name: 'bought_price_field',
              //   label: context.l10n.common__bought_price,
              //   initialValue: bird.boughtPrice?.toString(),
              //   onChanged: (boughtPrice) {
              //     if (boughtPrice != null) return;
              //     context.read<BirdBloc>().add(
              //           BirdEvent.change(
              //             bird: bird.copyWith(
              //               boughtPrice: double.tryParse(boughtPrice!),
              //             ),
              //           ),
              //         );
              //   },
              // ),
              // BirdTextField(
              //   name: 'sell_price_offer_field',
              //   label: context.l10n.common__sell_price_offer,
              //   initialValue: bird.sellPriceOffer?.toString(),
              //   onChanged: (sellPriceOffer) {
              //     if (sellPriceOffer != null) return;
              //     context.read<BirdBloc>().add(
              //           BirdEvent.change(
              //             bird: bird.copyWith(
              //               sellPriceOffer: double.tryParse(sellPriceOffer!),
              //             ),
              //           ),
              //         );
              //   },
              // ),
              // BirdTextField(
              //   name: 'sell_price_real_field',
              //   label: context.l10n.common__sell_price_real,
              //   initialValue: bird.sellPriceReal?.toString(),
              //   onChanged: (sellPriceReal) {
              //     if (sellPriceReal != null) return;
              //     context.read<BirdBloc>().add(
              //           BirdEvent.change(
              //             bird: bird.copyWith(
              //               sellPriceReal: double.tryParse(sellPriceReal!),
              //             ),
              //           ),
              //         );
              //   },
              // ),
              // BirdTextField(
              //   name: 'partner_field',
              //   label: context.l10n.common__partner_ringnumber,
              //   initialValue: bird.partnerRingnumber,
              //   onChanged: (partnerRingnumber) {
              //     context.read<BirdBloc>().add(
              //           BirdEvent.change(
              //             bird: bird.copyWith(
              //               partnerRingnumber: partnerRingnumber,
              //             ),
              //           ),
              //         );
              //   },
              // ),
              // BirdDropdownField<bool>(
              //   name: 'is_for_sale_field',
              //   label: context.l10n.common__is_for_sale,
              //   initialValue: bird.isForSale,
              //   onChanged: (isForSale) {
              //     context.read<BirdBloc>().add(
              //           BirdEvent.change(
              //             bird: bird.copyWith(isForSale: isForSale),
              //           ),
              //         );
              //   },
              //   items: const [],
              // ),
            ].genericJoin(const SizedBox(height: 16)),
          );
        },
      ),
    );
  }
}
