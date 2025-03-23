import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/born_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/bought_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/bought_price_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/cage_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/color_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/created_information.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/died_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/parent_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/ringnumber_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/sell_date_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/sell_price_offer_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/sell_price_real_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/sex_field.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/species_field.dart';
import 'package:birdbreeder/services/screen_size.dart';

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
            RingnumberField(bird: bird),
            CageField(bird: bird),
            SpeciesField(
              bird: bird,
            ),
            Row(
              spacing: 16,
              children: [
                Expanded(
                  flex: 4,
                  child: ColorField(
                    bird: bird,
                  ),
                ),
                Expanded(
                  child: SexField(bird: bird),
                ),
              ],
            ),
            ParentField(initialBird: bird, parentType: ParentType.father),
            ParentField(initialBird: bird, parentType: ParentType.mother),
            BornDateField(bird: bird),
            BoughtDateField(bird: bird),
            SellDateField(bird: bird),
            DiedDateField(bird: bird),
            BoughtPriceField(bird: bird),
            SellPriceOfferField(bird: bird),
            SellPriceRealField(bird: bird),
            CreatedInformation(bird: bird),
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
