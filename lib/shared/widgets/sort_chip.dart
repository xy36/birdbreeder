import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_header.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

/// Compact sort trigger used across all overview pages.
///
/// Shows the shared sort icon (with an optional ↑/↓ direction badge) and opens a
/// modal bottom sheet with the available sort options. Tapping the currently
/// selected option toggles the direction (when [showDirection] is true);
/// tapping another option selects it.
class SortChip<T extends Enum> extends StatelessWidget {
  const SortChip({
    required this.current,
    required this.ascending,
    required this.options,
    required this.labelFor,
    required this.onChanged,
    this.showDirection = true,
    super.key,
  });

  final T current;
  final bool ascending;
  final List<T> options;
  final String Function(BuildContext, T) labelFor;
  final void Function(T field, bool ascending) onChanged;

  /// Whether the option has a meaningful asc/desc direction. When false the
  /// direction badge and arrows are hidden and the sheet is a plain
  /// single-select.
  final bool showDirection;

  Future<void> _open(BuildContext context) async {
    await openSheet<void>(
      context,
      _SortSheet<T>(
        current: current,
        ascending: ascending,
        options: options,
        labelFor: labelFor,
        showDirection: showDirection,
        onChanged: onChanged,
      ),
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
              if (showDirection)
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

class _SortSheet<T extends Enum> extends StatelessWidget {
  const _SortSheet({
    required this.current,
    required this.ascending,
    required this.options,
    required this.labelFor,
    required this.showDirection,
    required this.onChanged,
  });

  final T current;
  final bool ascending;
  final List<T> options;
  final String Function(BuildContext, T) labelFor;
  final bool showDirection;
  final void Function(T field, bool ascending) onChanged;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeader(title: context.tr.common.sorting.name),
          for (final o in options)
            ListTile(
              title: Text(labelFor(context, o)),
              selected: o == current,
              trailing: _trailing(cs, o),
              onTap: () {
                final isCurrent = o == current;
                final nextAscending =
                    showDirection && isCurrent ? !ascending : ascending;
                onChanged(o, nextAscending);
                Navigator.pop(context);
              },
            ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget? _trailing(ColorScheme cs, T option) {
    if (option != current) return null;
    if (showDirection) {
      return Icon(
        ascending ? AppIcons.arrowUp : AppIcons.arrowDown,
        color: cs.primary,
      );
    }
    return Icon(AppIcons.check, color: cs.primary);
  }
}
