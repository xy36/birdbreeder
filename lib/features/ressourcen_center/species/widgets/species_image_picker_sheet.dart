import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/ressources/species_image_candidate.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/species_image_search_service.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:cached_network_image/cached_network_image.dart';

Future<String?> showSpeciesImagePicker(
  BuildContext context, {
  required String name,
  String? latName,
}) {
  return showModalBottomSheet<String>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (_) => _SpeciesImagePickerSheet(name: name, latName: latName),
  );
}

class _SpeciesImagePickerSheet extends StatefulWidget {
  const _SpeciesImagePickerSheet({required this.name, this.latName});

  final String name;
  final String? latName;

  @override
  State<_SpeciesImagePickerSheet> createState() =>
      _SpeciesImagePickerSheetState();
}

class _SpeciesImagePickerSheetState extends State<_SpeciesImagePickerSheet> {
  late final Future<List<SpeciesImageCandidate>> _future;

  @override
  void initState() {
    super.initState();
    _future = s1<SpeciesImageSearchService>().search(
      query: widget.name,
      latName: widget.latName,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    final speciesTr = tr.species;
    return SafeArea(
      top: false,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              speciesTr.image.picker_title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.6,
              ),
              child: FutureBuilder<List<SpeciesImageCandidate>>(
                future: _future,
                builder: (context, snap) {
                  if (snap.connectionState != ConnectionState.done) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const CircularProgressIndicator(),
                            const SizedBox(height: 12),
                            Text(speciesTr.image.loading),
                          ],
                        ),
                      ),
                    );
                  }
                  final items = snap.data ?? const [];
                  if (items.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Center(
                        child: Text(
                          speciesTr.image.no_results,
                          style: TextStyle(color: cs.onSurfaceVariant),
                        ),
                      ),
                    );
                  }
                  return GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: items.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.85,
                    ),
                    itemBuilder: (_, i) {
                      final c = items[i];
                      return InkWell(
                        onTap: () => Navigator.of(context).pop(c.thumbnailUrl),
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: cs.outlineVariant),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                child: CachedNetworkImage(
                                  imageUrl: c.thumbnailUrl,
                                  fit: BoxFit.cover,
                                  placeholder: (_, __) => ColoredBox(
                                    color: cs.surfaceContainer,
                                  ),
                                  errorWidget: (_, __, ___) => Icon(
                                    AppIcons.brokenImageOutlined,
                                    color: cs.onSurfaceVariant,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text(
                                  c.title,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: cs.onSurface,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(tr.common.cancel),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
