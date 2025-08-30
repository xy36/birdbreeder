import 'package:birdbreeder/common_imports.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({
    super.key,
    this.onClose,
    required this.title,
  });

  final void Function()? onClose;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: onClose != null
                ? () {
                    onClose!();
                  }
                : () => Navigator.of(context).maybePop(),
          ),
        ],
      ),
    );
  }
}
