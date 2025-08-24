import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key, required this.onChanged});

  final void Function(String) onChanged;

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  bool showSearch = false;

  final controller = TextEditingController();

  String searchQuery = '';

  @override
  void initState() {
    controller.addListener(() {
      widget.onChanged(controller.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  double get width => context.isMobile
      ? MediaQuery.of(context).size.width - 150
      : MediaQuery.of(context).size.width / 3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 300),
          crossFadeState:
              showSearch ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          firstChild: const SizedBox.shrink(),
          secondChild: SizedBox(
            width: width,
            child: SearchBar(
              elevation: const WidgetStatePropertyAll(0),
              controller: controller,
              autoFocus: true,
              hintText: context.l10n.common__search,
              onChanged: widget.onChanged,
              trailing: [
                if (controller.text.isNotEmpty)
                  IconButton(
                    onPressed: controller.clear,
                    icon: const Icon(Icons.close),
                  ),
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              showSearch = !showSearch;

              if (!showSearch) {
                controller.clear();
              }
            });
          },
          icon: Icon(showSearch ? Icons.search_off : Icons.search),
        ),
      ],
    );
  }
}
