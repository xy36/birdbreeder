import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/section_card.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird_image/entity/bird_image.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/hash_image.dart';
import 'package:birdbreeder/shared/widgets/image_lightbox.dart';

/// Bird form section previewing a bird's photos. Tapping a thumbnail or the
/// "manage" action opens the full-screen bird photos page. Only available once
/// the bird is saved (images are keyed by bird id).
class PhotosSection extends StatelessWidget {
  const PhotosSection(this.bird, {super.key});

  final Bird bird;

  bool get _isSaved => bird.id.isNotEmpty;

  void _openManager(BuildContext context) {
    unawaited(context.router.push(BirdPhotosRoute(bird: bird)));
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.bird.sections.photos;
    final scheme = Theme.of(context).colorScheme;
    return SectionCard(
      collapsible: true,
      icon: AppIcons.imageOutlined,
      title: tr.title,
      subtitle: tr.sub_title,
      footer: _isSaved
          ? SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                icon: const Icon(AppIcons.gallery, size: 18),
                label: Text(tr.manage),
                onPressed: () => _openManager(context),
              ),
            )
          : null,
      children: [
        if (!_isSaved)
          Text(
            tr.save_first,
            style: TextStyle(color: scheme.onSurfaceVariant),
          )
        else
          BlocBuilder<BirdBreederCubit, BirdBreederState>(
            builder: (context, _) {
              final images = bird.imagesResolved;
              if (images.isEmpty) {
                return Text(
                  tr.empty,
                  style: TextStyle(color: scheme.onSurfaceVariant),
                );
              }
              return _PhotoPreviewStrip(images: images);
            },
          ),
      ],
    );
  }
}

/// Horizontal thumbnail strip; the first image carries a cover star badge.
/// Tapping a thumbnail opens the fullscreen lightbox at that image.
class _PhotoPreviewStrip extends StatelessWidget {
  const _PhotoPreviewStrip({required this.images});

  final List<BirdImage> images;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final hashes = [for (final i in images) i.hash];
    return SizedBox(
      height: 64,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        itemCount: images.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final image = images[index];
          return GestureDetector(
            onTap: () => unawaited(
              ImageLightbox.show(
                context,
                hashes: hashes,
                initialIndex: index,
              ),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    width: 64,
                    height: 64,
                    child: HashImage(hash: image.hash),
                  ),
                ),
                if (index == 0)
                  Positioned(
                    top: 4,
                    left: 4,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: scheme.tertiary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        AppIcons.star,
                        size: 10,
                        color: scheme.onTertiary,
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
