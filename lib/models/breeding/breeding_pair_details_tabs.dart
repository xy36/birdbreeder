import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

enum BreedingPairDetailsTabs {
  overview,
  broods,
  ;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case BreedingPairDetailsTabs.overview:
        return 'Übersicht';
      case BreedingPairDetailsTabs.broods:
        return 'Gelege';
    }
  }

  Widget getIcon() {
    return Icon(
      switch (this) {
        BreedingPairDetailsTabs.overview => AppIcons.breedingPairTabOverview,
        BreedingPairDetailsTabs.broods => AppIcons.breedingPairTabBroods,
      },
    );
  }
}
