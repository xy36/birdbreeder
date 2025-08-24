import 'package:birdbreeder/common_imports.dart';

/// Places children in 1 column on narrow screens and 2 columns otherwise.
class SectionGrid extends StatelessWidget {
  const SectionGrid({
    super.key,
    required this.children,
    this.gap = 12,
    this.breakpoint = 600,
  });

  final List<Widget> children;
  final double gap;
  final double breakpoint;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    if (w < breakpoint) {
      return Column(
        children: _sep(children, SizedBox(height: gap)),
      );
    }
    final left = <Widget>[];
    final right = <Widget>[];
    for (var i = 0; i < children.length; i++) {
      (i.isEven ? left : right).add(children[i]);
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Column(children: _sep(left, SizedBox(height: gap)))),
        SizedBox(width: gap),
        Expanded(child: Column(children: _sep(right, SizedBox(height: gap)))),
      ],
    );
  }

  List<Widget> _sep(List<Widget> items, Widget spacer) {
    if (items.isEmpty) return items;
    final out = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      out.add(items[i]);
      if (i != items.length - 1) out.add(spacer);
    }
    return out;
  }
}
