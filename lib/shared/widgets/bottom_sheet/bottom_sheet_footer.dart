import 'package:birdbreeder/common_imports.dart';

class BottomSheetFooter extends StatelessWidget {
  const BottomSheetFooter({
    super.key,
    this.onCancel,
    this.onSubmit,
  });

  final void Function()? onCancel;
  final void Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        child: Row(
          children: [
            OutlinedButton(
              onPressed: onCancel != null
                  ? () {
                      onCancel!();
                    }
                  : () => Navigator.of(context).maybePop(),
              child: Text(context.tr.common.cancel),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: FilledButton.icon(
                icon: const Icon(Icons.check),
                onPressed: onSubmit != null
                    ? () {
                        onSubmit!();
                      }
                    : null,
                label: Text(context.tr.common.save),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
