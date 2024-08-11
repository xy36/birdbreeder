import 'package:birdbreeder/common_imports.dart';

Future<void> showChildAsDrawerDialog(
  BuildContext context,
  Widget child,
) async {
  await showDialog<dynamic>(
    context: context,
    builder: (
      context,
    ) {
      final maxWidth = MediaQuery.of(context).size.width;
      const dialogWidth = 500;
      final insetPadding = maxWidth - dialogWidth;
      return Dialog(
        insetPadding:
            EdgeInsets.only(left: insetPadding < 0 ? 0 : insetPadding),
        child: child,
      );
    },
    barrierDismissible: false,
  );
}
