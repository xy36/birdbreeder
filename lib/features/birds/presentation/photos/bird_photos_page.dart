import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird_image/entity/bird_image.dart';
import 'package:birdbreeder/services/images/bird_image_picker.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/hash_image.dart';
import 'package:birdbreeder/shared/widgets/image_lightbox.dart';

/// Full-screen manager for one bird's photos.
///
/// A large capture action (camera or gallery), a three-column grid of the
/// bird's photos, a cover-photo star toggle (the cover is the image at
/// position 0, shown in lists and on the detail page) and per-photo deletion.
/// Changes persist immediately through [BirdBreederCubit]; the bottom bar only
/// closes the screen.
@RoutePage()
class BirdPhotosPage extends StatelessWidget {
  const BirdPhotosPage({required this.bird, super.key});

  final Bird bird;

  Future<void> _addFromCamera(BuildContext context) async {
    final cubit = context.read<BirdBreederCubit>();
    final bytes = await BirdImagePicker.takePhoto();
    if (bytes != null) await cubit.addBirdImage(bird.id, bytes);
  }

  Future<void> _addFromGallery(BuildContext context) async {
    final cubit = context.read<BirdBreederCubit>();
    final images = await BirdImagePicker.pickFromGallery();
    for (final bytes in images) {
      await cubit.addBirdImage(bird.id, bytes);
    }
  }

  Future<void> _pickSource(BuildContext context) async {
    final tr = context.tr.bird.sections.photos;
    final source = await showModalBottomSheet<_PhotoSource>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(AppIcons.camera),
              title: Text(tr.source_camera),
              onTap: () => Navigator.of(sheetContext).pop(_PhotoSource.camera),
            ),
            ListTile(
              leading: const Icon(AppIcons.gallery),
              title: Text(tr.source_gallery),
              onTap: () => Navigator.of(sheetContext).pop(_PhotoSource.gallery),
            ),
          ],
        ),
      ),
    );
    if (!context.mounted || source == null) return;
    switch (source) {
      case _PhotoSource.camera:
        await _addFromCamera(context);
      case _PhotoSource.gallery:
        await _addFromGallery(context);
    }
  }

  /// Moves the photo at [from] to [to] and persists the new order. The photo
  /// at position 0 is the cover ("Titelbild").
  void _reorder(
    BuildContext context,
    List<BirdImage> images,
    int from,
    int to,
  ) {
    if (from == to) return;
    final reordered = [...images];
    final moved = reordered.removeAt(from);
    reordered.insert(to.clamp(0, reordered.length), moved);
    unawaited(
      context.read<BirdBreederCubit>().reorderBirdImages(bird.id, reordered),
    );
  }

  Future<void> _confirmDelete(BuildContext context, BirdImage image) async {
    final cubit = context.read<BirdBreederCubit>();
    final tr = context.tr.bird.sections.photos;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(tr.delete_title),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(context.tr.common.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(tr.delete_confirm),
          ),
        ],
      ),
    );
    if (confirmed ?? false) await cubit.deleteBirdImage(image);
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.bird.sections.photos;
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: scheme.surface,
      appBar: _PhotosAppBar(title: tr.title, ringNumber: bird.ringNumber),
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            BlocBuilder<BirdBreederCubit, BirdBreederState>(
              builder: (context, _) {
                final images = bird.imagesResolved;
                return SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(12, 4, 12, 96),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _SectionLabel(
                        label: tr.section_label,
                        count: images.length,
                      ),
                      const SizedBox(height: 8),
                      _PhotoGrid(
                        images: images,
                        onAdd: () => unawaited(_pickSource(context)),
                        onReorder: (from, to) =>
                            _reorder(context, images, from, to),
                        onDelete: (image) =>
                            unawaited(_confirmDelete(context, image)),
                        onOpen: (index) => unawaited(
                          ImageLightbox.show(
                            context,
                            hashes: [for (final i in images) i.hash],
                            initialIndex: index,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      _Hint(text: tr.hint),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              left: 12,
              right: 12,
              bottom: 14,
              child: _SaveBar(
                cancelLabel: context.tr.common.cancel,
                doneLabel: tr.done,
                onClose: () => Navigator.of(context).maybePop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _PhotoSource { camera, gallery }

/// App bar showing the "Fotos" title with the bird's ring number beneath it.
class _PhotosAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _PhotosAppBar({required this.title, required this.ringNumber});

  final String title;
  final String? ringNumber;

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.colorScheme.surface,
      leading: const BackButton(),
      titleSpacing: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: theme.textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          if (ringNumber != null && ringNumber!.isNotEmpty)
            Text(
              ringNumber!,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
                letterSpacing: 0.3,
                fontFeatures: const [FontFeature.tabularFigures()],
              ),
            ),
        ],
      ),
    );
  }
}

/// Uppercase section label with a trailing count chip.
class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.label, required this.count});

  final String label;
  final int count;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 6, 4, 0),
      child: Row(
        children: [
          Icon(AppIcons.gallery, size: 12, color: scheme.onSurfaceVariant),
          const SizedBox(width: 6),
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: scheme.onSurfaceVariant,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              '$count',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.3,
                color: scheme.onSurface,
                fontFeatures: const [FontFeature.tabularFigures()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Three-column grid of photo tiles followed by the add tile.
///
/// Long-press a photo and drop it on another to reorder; the photo in the
/// first slot is the cover ("Titelbild"). Dropping on the add tile moves the
/// photo to the end.
class _PhotoGrid extends StatelessWidget {
  const _PhotoGrid({
    required this.images,
    required this.onAdd,
    required this.onReorder,
    required this.onDelete,
    required this.onOpen,
  });

  final List<BirdImage> images;
  final VoidCallback onAdd;
  final void Function(int from, int to) onReorder;
  final void Function(BirdImage image) onDelete;
  final void Function(int index) onOpen;

  @override
  Widget build(BuildContext context) {
    const spacing = 8.0;
    return LayoutBuilder(
      builder: (context, constraints) {
        final tileSize = (constraints.maxWidth - spacing * 2) / 3;
        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: [
            for (final (index, image) in images.indexed)
              SizedBox(
                width: tileSize,
                height: tileSize,
                child: _DraggablePhotoTile(
                  index: index,
                  image: image,
                  isCover: index == 0,
                  tileSize: tileSize,
                  onReorder: onReorder,
                  onDelete: () => onDelete(image),
                  onOpen: () => onOpen(index),
                ),
              ),
            SizedBox(
              width: tileSize,
              height: tileSize,
              child: DragTarget<int>(
                onWillAcceptWithDetails: (details) =>
                    details.data != images.length - 1,
                onAcceptWithDetails: (details) =>
                    onReorder(details.data, images.length - 1),
                builder: (context, candidate, rejected) =>
                    _AddTile(onTap: onAdd, highlighted: candidate.isNotEmpty),
              ),
            ),
          ],
        );
      },
    );
  }
}

/// A photo tile that can be dragged onto another tile to reorder, and is itself
/// a drop target for other tiles.
class _DraggablePhotoTile extends StatelessWidget {
  const _DraggablePhotoTile({
    required this.index,
    required this.image,
    required this.isCover,
    required this.tileSize,
    required this.onReorder,
    required this.onDelete,
    required this.onOpen,
  });

  final int index;
  final BirdImage image;
  final bool isCover;
  final double tileSize;
  final void Function(int from, int to) onReorder;
  final VoidCallback onDelete;
  final VoidCallback onOpen;

  @override
  Widget build(BuildContext context) {
    return DragTarget<int>(
      onWillAcceptWithDetails: (details) => details.data != index,
      onAcceptWithDetails: (details) => onReorder(details.data, index),
      builder: (context, candidate, rejected) {
        final tile = _PhotoTile(
          image: image,
          isCover: isCover,
          highlighted: candidate.isNotEmpty,
          onDelete: onDelete,
          onOpen: onOpen,
        );
        return LongPressDraggable<int>(
          data: index,
          feedback: SizedBox(
            width: tileSize,
            height: tileSize,
            child: Material(
              color: Colors.transparent,
              elevation: 8,
              borderRadius: BorderRadius.circular(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: HashImage(hash: image.hash),
              ),
            ),
          ),
          childWhenDragging: Opacity(opacity: 0.3, child: tile),
          child: tile,
        );
      },
    );
  }
}

/// A single square photo with cover badge, delete action and drag affordance.
class _PhotoTile extends StatelessWidget {
  const _PhotoTile({
    required this.image,
    required this.isCover,
    required this.highlighted,
    required this.onDelete,
    required this.onOpen,
  });

  final BirdImage image;
  final bool isCover;
  final bool highlighted;
  final VoidCallback onDelete;
  final VoidCallback onOpen;

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.bird.sections.photos;
    final scheme = Theme.of(context).colorScheme;
    return Stack(
      children: [
        Positioned.fill(
          child: GestureDetector(
            onTap: onOpen,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: HashImage(hash: image.hash),
            ),
          ),
        ),
        if (highlighted)
          Positioned.fill(
            child: IgnorePointer(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: scheme.primary, width: 3),
                  color: scheme.primary.withValues(alpha: 0.12),
                ),
              ),
            ),
          ),
        if (isCover)
          Positioned(
            top: 6,
            left: 6,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
              decoration: BoxDecoration(
                color: scheme.tertiary,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(AppIcons.star, size: 10, color: scheme.onTertiary),
                  const SizedBox(width: 3),
                  Text(
                    tr.cover_badge.toUpperCase(),
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.4,
                      color: scheme.onTertiary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        Positioned(
          top: 6,
          right: 6,
          child: _TileActionButton(
            icon: AppIcons.close,
            tooltip: tr.remove,
            onTap: onDelete,
          ),
        ),
      ],
    );
  }
}

/// Small translucent circular button overlaid on a photo tile.
class _TileActionButton extends StatelessWidget {
  const _TileActionButton({
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 24,
          height: 24,
          decoration: const BoxDecoration(
            color: Color(0x8C000000),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 14, color: Colors.white),
        ),
      ),
    );
  }
}

/// Dashed "add photo" tile that matches the empty-slot look. Highlights while a
/// photo is dragged over it (dropping moves that photo to the end).
class _AddTile extends StatelessWidget {
  const _AddTile({required this.onTap, this.highlighted = false});

  final VoidCallback onTap;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final tr = context.tr.bird.sections.photos;
    return _DashedBorder(
      color: highlighted ? scheme.primary : scheme.outline,
      radius: 12,
      child: Material(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(AppIcons.addAPhoto, size: 22, color: scheme.primary),
              const SizedBox(height: 4),
              Text(
                tr.add_tile,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.3,
                  color: scheme.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Informational footnote explaining photo behaviour.
class _Hint extends StatelessWidget {
  const _Hint({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: scheme.outlineVariant),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(AppIcons.info, size: 14, color: scheme.onSurfaceVariant),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 11, color: scheme.onSurfaceVariant),
            ),
          ),
        ],
      ),
    );
  }
}

/// Floating bottom bar with a ghost cancel and a primary done action.
class _SaveBar extends StatelessWidget {
  const _SaveBar({
    required this.cancelLabel,
    required this.doneLabel,
    required this.onClose,
  });

  final String cancelLabel;
  final String doneLabel;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: 56,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: dark ? const Color(0x80000000) : const Color(0x24141E50),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          TextButton(
            onPressed: onClose,
            style: TextButton.styleFrom(
              foregroundColor: scheme.onSurfaceVariant,
              padding: const EdgeInsets.symmetric(horizontal: 18),
            ),
            child: Text(cancelLabel),
          ),
          Expanded(
            child: FilledButton.icon(
              onPressed: onClose,
              style: FilledButton.styleFrom(
                backgroundColor: scheme.primary,
                foregroundColor: scheme.onPrimary,
                minimumSize: const Size.fromHeight(44),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              icon: const Icon(AppIcons.check, size: 18),
              label: Text(doneLabel),
            ),
          ),
        ],
      ),
    );
  }
}

/// Paints a dashed rounded-rectangle border around [child].
class _DashedBorder extends StatelessWidget {
  const _DashedBorder({
    required this.color,
    required this.radius,
    required this.child,
  });

  final Color color;
  final double radius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: _DashedBorderPainter(color: color, radius: radius),
      child: child,
    );
  }
}

class _DashedBorderPainter extends CustomPainter {
  const _DashedBorderPainter({required this.color, required this.radius});

  final Color color;
  final double radius;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    final rrect = RRect.fromRectAndRadius(
      Offset.zero & size,
      Radius.circular(radius),
    );
    final path = Path()..addRRect(rrect);
    const dash = 6.0;
    const gap = 4.0;
    for (final metric in path.computeMetrics()) {
      var distance = 0.0;
      while (distance < metric.length) {
        canvas.drawPath(
          metric.extractPath(distance, distance + dash),
          paint,
        );
        distance += dash + gap;
      }
    }
  }

  @override
  bool shouldRepaint(_DashedBorderPainter oldDelegate) =>
      oldDelegate.color != color || oldDelegate.radius != radius;
}
