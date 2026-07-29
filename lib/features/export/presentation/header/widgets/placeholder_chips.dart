import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/export/data/pdf_template_resolver.dart';

/// Tappable chips that insert a `{{placeholder}}` at the cursor.
///
/// The point of the chips is that nobody has to learn the syntax: a breeder
/// taps "Datum" and the template gains `{{datum}}` wherever the caret was.
class PlaceholderChips extends StatelessWidget {
  const PlaceholderChips({required this.controller, super.key});

  final TextEditingController controller;

  void _insert(String placeholder) {
    final text = controller.text;
    final selection = controller.selection;
    final token = '{{$placeholder}}';

    // A controller that was never focused reports an invalid selection;
    // appending is the sane fallback.
    final start = selection.start < 0 ? text.length : selection.start;
    final end = selection.end < 0 ? text.length : selection.end;

    controller
      ..text = text.replaceRange(start, end, token)
      ..selection = TextSelection.collapsed(offset: start + token.length);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: -6,
      children: [
        for (final placeholder in PdfTemplateResolver.placeholders)
          ActionChip(
            label: Text(placeholder),
            visualDensity: VisualDensity.compact,
            onPressed: () => _insert(placeholder),
          ),
      ],
    );
  }
}
