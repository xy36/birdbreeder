/// Generic data holder for selectable options.
class Option {
  const Option({required this.id, required this.label});
  final String id; // null can represent "All"
  final String label; // display label
}
