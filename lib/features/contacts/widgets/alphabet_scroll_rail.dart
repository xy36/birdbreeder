import 'package:birdbreeder/common_imports.dart';

/// Vertical A–Z quick-scroll rail for the contacts overview.
///
/// Renders the full alphabet plus a trailing `#`; letters that have no contacts
/// are dimmed. Tapping or dragging selects a letter — absent letters resolve to
/// the nearest present one — and reports it through [onSelect]. The
/// [activeLetter] is highlighted.
class AlphabetScrollRail extends StatelessWidget {
  const AlphabetScrollRail({
    required this.letters,
    required this.activeLetter,
    required this.onSelect,
    super.key,
  });

  /// Letters that currently have at least one contact.
  final Set<String> letters;
  final String? activeLetter;
  final ValueChanged<String> onSelect;

  static const List<String> _alphabet = [
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', //
    'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '#',
  ];

  /// Resolves [letter] to itself when present, else the nearest present letter
  /// searching downward first, then upward.
  String? _resolve(String letter) {
    if (letters.contains(letter)) return letter;
    final start = _alphabet.indexOf(letter);
    if (start < 0) return null;
    for (var i = start; i < _alphabet.length; i++) {
      if (letters.contains(_alphabet[i])) return _alphabet[i];
    }
    for (var i = start; i >= 0; i--) {
      if (letters.contains(_alphabet[i])) return _alphabet[i];
    }
    return null;
  }

  void _selectAt(double dy, double height) {
    if (height <= 0) return;
    final index = (dy / height * _alphabet.length)
        .floor()
        .clamp(0, _alphabet.length - 1);
    final resolved = _resolve(_alphabet[index]);
    if (resolved != null) onSelect(resolved);
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapDown: (d) => _selectAt(d.localPosition.dy, height),
          onVerticalDragStart: (d) => _selectAt(d.localPosition.dy, height),
          onVerticalDragUpdate: (d) => _selectAt(d.localPosition.dy, height),
          child: Container(
            width: 22,
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (final letter in _alphabet)
                  _RailLetter(
                    letter: letter,
                    present: letters.contains(letter),
                    active: letter == activeLetter,
                    color: cs.primary,
                    presentColor: cs.onSurfaceVariant,
                    absentColor: cs.onSurfaceVariant.withValues(alpha: 0.3),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _RailLetter extends StatelessWidget {
  const _RailLetter({
    required this.letter,
    required this.present,
    required this.active,
    required this.color,
    required this.presentColor,
    required this.absentColor,
  });

  final String letter;
  final bool present;
  final bool active;
  final Color color;
  final Color presentColor;
  final Color absentColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      letter,
      style: TextStyle(
        fontSize: 10.5,
        height: 1,
        fontWeight: active ? FontWeight.w800 : FontWeight.w600,
        color: active ? color : (present ? presentColor : absentColor),
      ),
    );
  }
}
