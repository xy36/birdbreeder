import 'package:birdbreeder/common_imports.dart';

class BottomSheetFooter extends StatelessWidget {
  const BottomSheetFooter({
    super.key,
    this.onSecondaryButton,
    this.onPrimaryButton,
    this.secondaryButtonLabel,
    this.primaryButtonLabel,
  });

  /// The callback for the secondary button. If null, the button will close the sheet.
  final void Function()? onSecondaryButton;

  /// The label of the secondary button. If null, defaults to 'Cancel'.
  final String? secondaryButtonLabel;

  /// The callback for the primary button. If null, the button will be disabled.
  final void Function()? onPrimaryButton;

  /// The label of the primary button. If null, defaults to 'Save'.
  final String? primaryButtonLabel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Card(
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Row(
            children: [
              OutlinedButton(
                onPressed: onSecondaryButton != null
                    ? () {
                        onSecondaryButton!();
                      }
                    : () => Navigator.of(context).maybePop(),
                child: Text(secondaryButtonLabel ?? context.tr.common.cancel),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: FilledButton.icon(
                  icon: const Icon(Icons.check),
                  onPressed: onPrimaryButton != null
                      ? () {
                          onPrimaryButton!();
                        }
                      : null,
                  label: Text(primaryButtonLabel ?? context.tr.common.save),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
