import 'package:flutter/widgets.dart';

class BirdTextBox extends StatelessWidget {
  const BirdTextBox({super.key, required this.label, this.value});

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$label: '),
        Text('${value ?? ''}'),
      ],
    );
  }
}
