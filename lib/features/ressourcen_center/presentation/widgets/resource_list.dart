import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/bird_color_extension.dart';
import 'package:birdbreeder/core/extensions/cage_extension.dart';
import 'package:birdbreeder/core/extensions/species_extension.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/species.dart';

/// Generic list for a resource type (Species/Cages/Colors).
class ResourceList<T> extends StatefulWidget {
  const ResourceList({
    super.key,
    required this.title,
    required this.items,
    required this.onCreate,
    required this.onEdit,
    required this.onDelete,
  });

  final String title;
  final List<T> items;
  final VoidCallback onCreate;
  final void Function(T item) onEdit;
  final void Function(T item) onDelete;

  @override
  State<ResourceList<T>> createState() => _ResourceListState<T>();
}

class _ResourceListState<T> extends State<ResourceList<T>> {
  String _q = '';

  @override
  Widget build(BuildContext context) {
    final filtered = widget.items.where((e) {
      final q = _q.trim().toLowerCase();
      if (q.isEmpty) return true;
      final label = _labelOf(e).toLowerCase();
      return label.contains(q);
    }).toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: context.l10n.common__search_hint,
                    isDense: true,
                  ),
                  onChanged: (v) => setState(() => _q = v),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: filtered.length,
            separatorBuilder: (_, __) => const Divider(
              height: 1,
              indent: 12,
              endIndent: 12,
            ),
            itemBuilder: (_, i) {
              final item = filtered[i];
              return ListTile(
                title: _titleOf(item),
                subtitle: _subtitleOf(item),
                trailing: _trailingOf(item),
                onTap: () => widget.onEdit(item),
              );
            },
          ),
        ),
      ],
    );
  }

  // --- adapters: replace with your own model logic ---
  String _labelOf(T item) {
    if (item is Species) {
      return item.name ?? '-';
    }
    if (item is Cage) return item.name ?? '-';
    if (item is BirdColor) return item.name ?? '-';
    if (item is Contact) return item.name ?? '-';

    return item.toString();
  }

  Widget _titleOf(T item) {
    if (item is Species) {
      return Row(
        spacing: 8,
        children: [
          Text(_labelOf(item)),
          if (item.latName != null && item.latName!.isNotEmpty)
            Text(
              '${item.latName}',
              style: context.bodySmall?.copyWith(
                fontStyle: FontStyle.italic,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
        ],
      );
    }

    if (item is Cage) return Text(_labelOf(item));
    if (item is BirdColor) return Text(_labelOf(item));
    if (item is Contact) return Text(_labelOf(item));

    return Text(item.toString());
  }

  Widget? _subtitleOf(T item) {
    final usage = switch (item) {
      final Species s => s.usageCount,
      final Cage c => c.usageCount,
      final BirdColor bc => bc.usageCount,
      _ => null,
    };
    if (usage == null) return null;
    return Text(context.l10n.common__count_bird(usage));
  }

  Widget _trailingOf(T item) {
    return Wrap(
      spacing: 4,
      children: [
        IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => widget.onDelete(item),
        ),
      ],
    );
  }
}
