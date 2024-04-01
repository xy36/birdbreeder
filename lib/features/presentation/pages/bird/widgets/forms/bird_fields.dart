import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/bird.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
import 'package:birdbreeder/features/domain/models/enums/origin.dart';
import 'package:birdbreeder/features/domain/models/enums/sex.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/field_templates/bird_date_field.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/field_templates/bird_dropdown_field.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/field_templates/bird_text_field.dart';
import 'package:collection/collection.dart';
import 'package:easy_autocomplete/easy_autocomplete.dart';

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
            children: [
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
              EasyAutocomplete(
                initialValue: bird.species?.name,
                suggestions: state.birdResources.speciesList
                    .map(
                      (e) => e.name ?? '-',
                    )
                    .toList(),
                onSubmitted: (p0) {
                  final species =
                      state.birdResources.speciesList.firstWhereOrNull(
                    (element) => element.name == p0,
                  );

                  context.read<BirdBloc>().add(
                        BirdEvent.change(bird: bird.copyWith(species: species)),
                      );
                },
                onChanged: (value) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(species: Species(name: value)),
                        ),
                      );
                },
              ),
              // BirdDropdownField<Species>(
              //   name: 'species_field',
              //   label: context.l10n.common__species,
              //   initialValue: bird.species,
              //   onChanged: (species) {
              //     context.read<BirdBloc>().add(
              //           BirdEvent.change(bird: bird.copyWith(species: species)),
              //         );
              //   },
              //   items: state.birdResources.speciesList
              //       .map(
              //         (e) => DropdownMenuItem(
              //           value: e,
              //           child: Text(e.name ?? '-'),
              //         ),
              //       )
              //       .toList(),
              // ),
              BirdDropdownField<BirdColor>(
                name: 'color_field',
                label: context.l10n.common__color,
                initialValue: bird.color,
                onChanged: (color) {
                  context
                      .read<BirdBloc>()
                      .add(BirdEvent.change(bird: bird.copyWith(color: color)));
                },
                items: state.birdResources.colorsList
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name ?? '-'),
                      ),
                    )
                    .toList(),
              ),
              BirdTextField(
                name: 'father_field',
                label: context.l10n.common__father_ringnumber,
                initialValue: bird.fatherRingnumber,
                onChanged: (fatherRingnumber) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird:
                              bird.copyWith(fatherRingnumber: fatherRingnumber),
                        ),
                      );
                },
              ),
              BirdTextField(
                name: 'mother_field',
                label: context.l10n.common__mother_ringnumber,
                initialValue: bird.motherRingnumber,
                onChanged: (motherRingnumber) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird:
                              bird.copyWith(motherRingnumber: motherRingnumber),
                        ),
                      );
                },
              ),
              BirdDropdownField<Origin>(
                name: 'origin_field',
                label: context.l10n.common__origin,
                initialValue: bird.origin,
                onChanged: (origin) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(bird: bird.copyWith(origin: origin)),
                      );
                },
                items: Origin.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name(context)),
                      ),
                    )
                    .toList(),
              ),
              BirdDropdownField<Sex>(
                name: 'sex_field',
                label: context.l10n.common__sex,
                initialValue: bird.sex,
                onChanged: (sex) {
                  context
                      .read<BirdBloc>()
                      .add(BirdEvent.change(bird: bird.copyWith(sex: sex)));
                },
                items: Sex.values
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name(context)),
                      ),
                    )
                    .toList(),
              ),
              BirdDateField(
                name: 'born_date_field',
                label: context.l10n.common__born_date,
                initialValue: bird.bornDate,
                onChanged: (bornDate) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(bornDate: bornDate),
                        ),
                      );
                },
              ),
              BirdDateField(
                name: 'bought_date_field',
                label: context.l10n.common__bought_date,
                initialValue: bird.boughtDate,
                onChanged: (boughtDate) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(boughtDate: boughtDate),
                        ),
                      );
                },
              ),
              BirdDateField(
                name: 'sell_date_field',
                label: context.l10n.common__sell_date,
                initialValue: bird.sellDate,
                onChanged: (sellDate) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(sellDate: sellDate),
                        ),
                      );
                },
              ),
              BirdDateField(
                name: 'died_date_field',
                label: context.l10n.common__died_date,
                initialValue: bird.diedDate,
                onChanged: (diedDate) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(diedDate: diedDate),
                        ),
                      );
                },
              ),
              BirdTextField(
                name: 'bought_price_field',
                label: context.l10n.common__bought_price,
                initialValue: bird.boughtPrice?.toString(),
                onChanged: (boughtPrice) {
                  if (boughtPrice != null) return;
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(
                            boughtPrice: double.tryParse(boughtPrice!),
                          ),
                        ),
                      );
                },
              ),
              BirdTextField(
                name: 'sell_price_offer_field',
                label: context.l10n.common__sell_price_offer,
                initialValue: bird.sellPriceOffer?.toString(),
                onChanged: (sellPriceOffer) {
                  if (sellPriceOffer != null) return;
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(
                            sellPriceOffer: double.tryParse(sellPriceOffer!),
                          ),
                        ),
                      );
                },
              ),
              BirdTextField(
                name: 'sell_price_real_field',
                label: context.l10n.common__sell_price_real,
                initialValue: bird.sellPriceReal?.toString(),
                onChanged: (sellPriceReal) {
                  if (sellPriceReal != null) return;
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(
                            sellPriceReal: double.tryParse(sellPriceReal!),
                          ),
                        ),
                      );
                },
              ),
              BirdTextField(
                name: 'cage_id_field',
                label: context.l10n.common__cage,
                initialValue: bird.cageId,
                onChanged: (cageId) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(bird: bird.copyWith(cageId: cageId)),
                      );
                },
              ),
              BirdTextField(
                name: 'partner_field',
                label: context.l10n.common__partner_ringnumber,
                initialValue: bird.partnerRingnumber,
                onChanged: (partnerRingnumber) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(
                            partnerRingnumber: partnerRingnumber,
                          ),
                        ),
                      );
                },
              ),
              BirdDropdownField<bool>(
                name: 'is_for_sale_field',
                label: context.l10n.common__is_for_sale,
                initialValue: bird.isForSale,
                onChanged: (isForSale) {
                  context.read<BirdBloc>().add(
                        BirdEvent.change(
                          bird: bird.copyWith(isForSale: isForSale),
                        ),
                      );
                },
                items: const [],
              ),
            ],
          );
        },
      ),
    );
  }
}
