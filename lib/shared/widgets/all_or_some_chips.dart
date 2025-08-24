import 'package:birdbreeder/common_imports.dart';

/// Generic "All or Some" chip row with built-in "All" logic.
/// Convention: empty selection means "All".
class AllOrSomeChips<T> extends StatelessWidget {
  const AllOrSomeChips({
    required this.values,
    required this.isSelected,
    required this.onChanged,
    required this.getLabel,
    this.allLabel = 'Alle',
    this.spacing = 8,
    super.key,
  });

  /// All possible values for T (e.g., enum values).
  final List<T> values;

  /// Returns true if a given value is selected.
  final bool Function(T value) isSelected;

  /// Called with the *new* selected list after a user change.
  /// Pass an empty list to indicate "All".
  final void Function(List<T> newSelected) onChanged;

  /// Returns the label widget for a given value.
  final Widget Function(T value) getLabel;

  /// Label for the "All" chip.
  final String allLabel;

  final double spacing;

  @override
  Widget build(BuildContext context) {
    // If selection is empty OR equals all values, we visually mark "All" as selected.
    final selectedCount = values.where(isSelected).length;
    final isAllSelected = selectedCount == 0 || selectedCount == values.length;

    return Wrap(
      spacing: spacing,
      runSpacing: spacing,
      children: [
        // "All" chip
        FilterChip(
          showCheckmark: false,
          label: Text(allLabel),
          selected: isAllSelected,
          onSelected: (selected) {
            // If user taps "All", set to empty (represents all).
            onChanged(<T>[]);
          },
        ),
        // One chip per value
        ...values.map((v) {
          final sel = isSelected(v);
          return FilterChip(
            showCheckmark: false,
            label: getLabel(v),
            selected: sel,
            onSelected: (tapped) {
              // Build a new list based on the tap
              final current = values.where(isSelected).toList();
              if (tapped && !sel) {
                current.add(v);
              } else if (!tapped && sel) {
                current.remove(v);
              }
              // If user selected all values, collapse back to "All" (empty).
              if (current.length == values.length) {
                onChanged(<T>[]);
              } else {
                onChanged(current);
              }
            },
          );
        }),
      ],
    );
  }
}
