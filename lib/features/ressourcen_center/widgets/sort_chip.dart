import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

class SortChip<T extends Enum> extends StatelessWidget {
  const SortChip({
    required this.current,
    required this.ascending,
    required this.options,
    required this.labelFor,
    required this.onChanged,
    super.key,
  });

  final T current;
  final bool ascending;
  final List<T> options;
  final String Function(BuildContext, T) labelFor;
  final void Function(T field, bool ascending) onChanged;

  void _open(BuildContext context) {
    final box = context.findRenderObject()! as RenderBox;
    final overlay =
        Overlay.of(context).context.findRenderObject()! as RenderBox;
    final pos = RelativeRect.fromRect(
      Rect.fromPoints(
        box.localToGlobal(Offset.zero, ancestor: overlay),
        box.localToGlobal(
          box.size.bottomRight(Offset.zero),
          ancestor: overlay,
        ),
      ),
      Offset.zero & overlay.size,
    );
    showMenu<T>(
      context: context,
      position: pos,
      items: options.map((o) {
        final isCurrent = o == current;
        return PopupMenuItem<T>(
          value: o,
          onTap: () {
            if (o == current) {
              onChanged(o, !ascending);
            } else {
              onChanged(o, ascending);
            }
          },
          child: Row(
            children: [
              Icon(
                isCurrent
                    ? (ascending ? AppIcons.arrowUp : AppIcons.arrowDown)
                    : null,
                size: 16,
              ),
              const SizedBox(width: 8),
              Text(labelFor(context, o)),
            ],
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Tooltip(
      message: labelFor(context, current),
      child: InkWell(
        onTap: () => _open(context),
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(AppIcons.sort, size: 22, color: cs.onSurfaceVariant),
              Positioned(
                right: -2,
                bottom: -2,
                child: Container(
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: cs.surface,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    ascending ? AppIcons.arrowUp : AppIcons.arrowDown,
                    size: 10,
                    color: cs.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
