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
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/edit_bird_form/parent_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/edit_bird_form/species_field.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class BirdFields extends StatelessWidget {
  const BirdFields({super.key, required this.bird});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    final size = ScreenSize.getScreenSize(context);
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        final fields = [
          FieldWithLabel(
            label: context.l10n.common__ringnumber,
            child: BirdTextField(
              name: 'ringnumber_field',
              hint: context.l10n.common__ringnumber,
              initialValue: bird.ringnumber,
              onChanged: (ringnumber) {
                context.read<BirdBloc>().add(
                      BirdEvent.change(
                        bird: bird.copyWith(ringnumber: ringnumber),
                      ),
                    );
              },
            ),
          ),
          FieldWithLabel(
            label: context.l10n.common__cage,
            child: CageField(bird: bird, birdResources: state.birdResources),
          ),
          FieldWithLabel(
            label: context.l10n.common__species,
            child: SpeciesField(
              bird: bird,
              birdResources: state.birdResources,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: FieldWithLabel(
                  label: context.l10n.common__color,
                  child: ColorField(
                    bird: bird,
                    birdResources: state.birdResources,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: FieldWithLabel(
                  label: context.l10n.common__sex,
                  child: BirdDropdownField<Sex>(
                    name: 'sex_field',
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
                            child: e.getIcon(context),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
          ParentField(initialBird: bird, parentType: ParentType.father),
          ParentField(initialBird: bird, parentType: ParentType.mother),

          // BlocBuilder<BirdsCubit, BirdsState>(
          //   builder: (context, state) {
          //     final possibleFathers = (state is BirdsLoaded)
          //         ? (state)
          //             .birds
          //             // filter own the bird itself
          //             .where((b) => b.id != bird.id)
          //             // filter out female birds
          //             .where((b) => b.sex != Sex.female)
          //             .toList()
          //         : <Bird>[];

          //     return FieldWithLabel(
          //       label: context.l10n.common__father_ringnumber,
          //       child: BirdDropdownField<Bird>(
          //         name: 'father_field',
          //         initialValue: (state is BirdsLoaded)
          //             ? (state).birds.firstWhereOrNull(
          //                   (element) => element.id == bird.father?.id,
          //                 )
          //             : null,
          //         onChanged: (father) {
          //           context.read<BirdBloc>().add(
          //                 BirdEvent.change(
          //                   bird: bird.copyWith(father: father),
          //                 ),
          //               );
          //         },
          //         selectedItemBuilder: (context) => possibleFathers
          //             .map(
          //               (e) => DropdownMenuItem(
          //                 value: e,
          //                 child: Text(e.ringnumber ?? '-'),
          //               ),
          //             )
          //             .toList(),
          //         items: possibleFathers
          //             .map(
          //               (e) => DropdownMenuItem(
          //                 value: e,
          //                 child: ListTile(
          //                   selected: e.id == bird.father?.id,
          //                   title: Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       Text(e.ringnumber ?? '-'),
          //                       Text(e.cage?.name ?? ''),
          //                     ],
          //                   ),
          //                   subtitle: Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       Text(e.species?.name ?? ''),
          //                       Text(e.born.toDateFormat(context)),
          //                     ],
          //                   ),
          //                   leading: e.sex.getIcon(context),
          //                 ),
          //               ),
          //             )
          //             .toList(),
          //       ),
          //     );
          //   },
          // ),

          // FieldWithLabel(
          //   label: context.l10n.common__father_ringnumber,
          //   child: BirdTextField(
          //     name: 'father_field',
          //     hint: context.l10n.common__father_ringnumber,
          //     initialValue: bird.father,
          //     onChanged: (fatherRingnumber) {
          //       context.read<BirdBloc>().add(
          //             BirdEvent.change(
          //               bird: bird.copyWith(father: fatherRingnumber),
          //             ),
          //           );
          //     },
          //   ),
          // ),
          // FieldWithLabel(
          //   label: context.l10n.common__mother_ringnumber,
          //   child: BirdTextField(
          //     name: 'mother_field',
          //     hint: context.l10n.common__mother_ringnumber,
          //     initialValue: bird.mother,
          //     onChanged: (motherRingnumber) {
          //       context.read<BirdBloc>().add(
          //             BirdEvent.change(
          //               bird: bird.copyWith(mother: motherRingnumber),
          //             ),
          //           );
          //     },
          //   ),
          // ),
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

          FieldWithLabel(
            label: context.l10n.common__born_date,
            child: BirdDateField(
              name: 'born_date_field',
              initialValue: bird.born,
              onChanged: (bornDate) {
                context.read<BirdBloc>().add(
                      BirdEvent.change(
                        bird: bird.copyWith(born: bornDate),
                      ),
                    );
              },
            ),
          ),
          FieldWithLabel(
            label: context.l10n.common__bought_date,
            child: BirdDateField(
              name: 'bought_date_field',
              initialValue: bird.bought,
              onChanged: (boughtDate) {
                context.read<BirdBloc>().add(
                      BirdEvent.change(
                        bird: bird.copyWith(bought: boughtDate),
                      ),
                    );
              },
            ),
          ),
          FieldWithLabel(
            label: context.l10n.common__sell_date,
            child: BirdDateField(
              name: 'sell_date_field',
              initialValue: bird.sell,
              onChanged: (sellDate) {
                context.read<BirdBloc>().add(
                      BirdEvent.change(
                        bird: bird.copyWith(sell: sellDate),
                      ),
                    );
              },
            ),
          ),
          FieldWithLabel(
            label: context.l10n.common__died_date,
            child: BirdDateField(
              name: 'died_date_field',
              initialValue: bird.died,
              onChanged: (diedDate) {
                context.read<BirdBloc>().add(
                      BirdEvent.change(
                        bird: bird.copyWith(died: diedDate),
                      ),
                    );
              },
            ),
          ),
          FieldWithLabel(
            label: context.l10n.common__bought_price,
            child: BirdTextField(
              name: 'bought_price_field',
              initialValue: bird.boughtPrice?.toString(),
              onChanged: (boughtPrice) {
                context.read<BirdBloc>().add(
                      BirdEvent.change(
                        bird: bird.copyWith(
                          boughtPrice: double.tryParse(boughtPrice!),
                        ),
                      ),
                    );
              },
            ),
          ),
          FieldWithLabel(
            label: context.l10n.common__sell_price_offer,
            child: BirdTextField(
              name: 'sell_price_offer_field',
              initialValue: bird.sellPriceOffer?.toString(),
              onChanged: (sellPriceOffer) {
                context.read<BirdBloc>().add(
                      BirdEvent.change(
                        bird: bird.copyWith(
                          sellPriceOffer: double.tryParse(sellPriceOffer!),
                        ),
                      ),
                    );
              },
            ),
          ),
          FieldWithLabel(
            label: context.l10n.common__sell_price_real,
            child: BirdTextField(
              name: 'sell_price_real_field',
              initialValue: bird.sellPriceReal?.toString(),
              onChanged: (sellPriceReal) {
                context.read<BirdBloc>().add(
                      BirdEvent.change(
                        bird: bird.copyWith(
                          sellPriceReal: double.tryParse(sellPriceReal!),
                        ),
                      ),
                    );
              },
            ),
          ),
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
        ];
        return Column(
          children: <Widget>[
            ...fields.map(
              (e) => Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.drawerDialogInsetPadding,
                ),
                child: e,
              ),
            ),
          ].genericJoin(const SizedBox(height: 16)),
        );
      },
    );
  }
}
