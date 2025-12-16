import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

class GenericSearchBar extends StatefulWidget {
  const GenericSearchBar({
    required this.onSearch,
    super.key,
    this.searchHint,
    this.initialQuery,
  });

  final String? initialQuery;
  final void Function(String query) onSearch;
  final String? searchHint;

  @override
  State<GenericSearchBar> createState() => _GenericSearchBarState();
}

class _GenericSearchBarState extends State<GenericSearchBar> {
  final _ctrl = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _ctrl.text = widget.initialQuery ?? '';
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _ctrl.dispose();
    super.dispose();
  }

  void _onChanged(String v) {
    // Simple 100ms debounce
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 100), () {
      widget.onSearch(v.trim());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: SearchBar(
        controller: _ctrl,
        onChanged: _onChanged,
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        ),
        onTapOutside: (_) {
          FocusScope.of(context).unfocus();
        },
        hintText: context.tr.common.search,
        trailing: [
          if (_ctrl.text.isEmpty)
            const SizedBox.shrink()
          else
            IconButton(
              icon: const Icon(AppIcons.clear),
              onPressed: () {
                _ctrl.clear();
                _onChanged('');
              },
            ),
        ],
      ),
    );
  }
}
