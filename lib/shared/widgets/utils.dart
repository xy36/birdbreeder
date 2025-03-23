import 'dart:ui';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/services/screen_size.dart';

Future<bool> showChildAsDrawerDialog(
  BuildContext context,
  Widget child,
) async {
  double getScreenWidth(BuildContext context) {
    final size = ScreenSize.getScreenSize(context);
    final widthFactor = switch (size) {
      ScreenSize.xs => 1,
      ScreenSize.sm => 1,
      ScreenSize.md => 0.6,
      ScreenSize.lg => 0.35,
    };
    return MediaQuery.of(context).size.width * widthFactor;
  }

  final success = await showGeneralDialog<bool>(
    context: context,
    transitionBuilder: (context, a1, a2, widget) {
      final curvedValue = Curves.easeInOut.transform(a1.value) - 1;
      final width = getScreenWidth(context);
      return Transform(
        transform: Matrix4.translationValues(
          curvedValue * -width,
          0,
          0,
        ),
        child: widget,
      );
    },
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) {
      return SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Dialog(
            insetPadding: EdgeInsets.zero,
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: getScreenWidth(context),
              child: child,
            ),
          ),
        ),
      );
    },
  );

  return success ?? false;
}
