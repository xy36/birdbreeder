import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/birds_overview_header.dart';

class BottomSearchBar extends StatelessWidget {
  const BottomSearchBar({
    required this.onAdd,
    required this.onSearch,
    super.key,
  });

  final void Function(String) onSearch;

  final void Function() onAdd;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        Expanded(
          child: GenericSearchBar(
            onSearch: onSearch,
          ),
        ),
        FloatingActionButton(
          onPressed: onAdd,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
