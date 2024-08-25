import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/dialogs/discard_changes_dialog.dart';

class NavigateBackButton extends StatelessWidget {
  const NavigateBackButton({
    super.key,
    this.discardDialogEnabled = true,
  });

  final bool discardDialogEnabled;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () async {
        if (discardDialogEnabled) {
          final result = await showDialog<bool>(
            context: context,
            builder: (context) => const DiscardChangesDialog(),
          );

          if (result == true && context.mounted) {
            Navigator.of(context).pop();
          }
          return;
        }
        Navigator.of(context).pop();
      },
    );
  }
}
