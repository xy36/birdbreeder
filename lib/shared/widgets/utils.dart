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

Future<void> onDelete(BuildContext context, void Function() onDelete) async {
  await showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(context.l10n.dialog__delete_bird_title),
        content: Text(context.l10n.dialog__delete_bird_message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(context.l10n.common__cancel),
          ),
          ElevatedButton(
            onPressed: () {
              onDelete();
              Navigator.of(context).pop();
            },
            child: Text(context.l10n.common__ok),
          ),
        ],
      );
    },
  );
}
