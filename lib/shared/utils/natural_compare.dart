/// Compares two strings naturally so embedded numbers sort numerically.
/// "A2" < "A10" instead of "A10" < "A2" (lexicographic).
int naturalCompare(String a, String b) {
  final ra = _tokenize(a);
  final rb = _tokenize(b);
  final len = ra.length < rb.length ? ra.length : rb.length;
  for (var i = 0; i < len; i++) {
    final ta = ra[i];
    final tb = rb[i];
    final na = int.tryParse(ta);
    final nb = int.tryParse(tb);
    if (na != null && nb != null) {
      if (na != nb) return na.compareTo(nb);
    } else {
      final cmp = ta.toLowerCase().compareTo(tb.toLowerCase());
      if (cmp != 0) return cmp;
    }
  }
  return ra.length.compareTo(rb.length);
}

final _re = RegExp(r'(\d+|\D+)');

List<String> _tokenize(String s) =>
    _re.allMatches(s).map((m) => m.group(0)!).toList();
