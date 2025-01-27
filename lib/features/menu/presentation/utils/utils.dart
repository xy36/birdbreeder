import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/services/screen_size.dart';

bool showMenuAsDrawer(BuildContext context) {
  final size = ScreenSize.getScreenSize(context);
  return size.isMobile();
}
