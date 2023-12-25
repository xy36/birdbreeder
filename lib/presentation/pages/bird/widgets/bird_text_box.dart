import 'package:flutter/widgets.dart';

class BirdTextBox extends StatelessWidget {
  const BirdTextBox({super.key, required this.label, this.value});

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$label: ${value ?? ''}'),
      ],
    );
  }
}
