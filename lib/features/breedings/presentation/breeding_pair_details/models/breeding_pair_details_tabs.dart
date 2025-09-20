import 'package:birdbreeder/common_imports.dart';

enum BreedingPairDetailsTabs {
  overview,
  broods,
  //timetable,
  ;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case BreedingPairDetailsTabs.overview:
        return 'Übersicht';
      case BreedingPairDetailsTabs.broods:
        return 'Gelege';
      //case BreedingPairDetailsTabs.timetable:
      //  return 'Zeitplan';
    }
  }

  Widget getIcon() {
    return Icon(
      switch (this) {
        BreedingPairDetailsTabs.overview => Icons.info_outline,
        BreedingPairDetailsTabs.broods => Icons.egg_outlined,
        //BreedingPairDetailsTabs.timetable => Icons.timelapse,
      },
    );
  }
}
