import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird_image/entity/bird_image.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/hash_image.dart';
import 'package:birdbreeder/shared/widgets/image_lightbox.dart';

/// Sticky identity summary shown above the bird form tabs ("Variant B").
///
/// Always visible across tabs so the user keeps identity context: cover photo,
/// ring number, species / colour and sale status, plus a four-cell stat strip
/// (sex, age, cage, offspring). Reactive to both the edited bird and the shared
/// resources (photos, children, cage).
class BirdSummaryHeader extends StatelessWidget {
  const BirdSummaryHeader({required this.bird, super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return BlocBuilder<BirdBreederCubit, BirdBreederState>(
      builder: (context, _) {
        final species = bird.speciesResolved?.name;
        final color = bird.colorResolved;
        final images = bird.imagesResolved;
        final subtitle = [species, color?.name].whereType<String>().join(' · ');

        return Container(
          decoration: BoxDecoration(
            color: cs.surface,
            border: Border(bottom: BorderSide(color: cs.outlineVariant)),
          ),
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          child: Column(
            children: [
              Row(
                children: [
                  _Avatar(bird: bird, images: images),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          bird.ringNumber?.isNotEmpty ?? false
                              ? bird.ringNumber!
                              : context.tr.bird.summary.unknown,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'monospace',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            color: cs.onSurface,
                          ),
                        ),
                        if (subtitle.isNotEmpty) ...[
                          const SizedBox(height: 2),
                          Row(
                            children: [
                              if (color?.hex != null &&
                                  color!.hex!.isNotEmpty) ...[
                                _Swatch(hex: color.hex!),
                                const SizedBox(width: 6),
                              ],
                              Flexible(
                                child: Text(
                                  subtitle,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: cs.onSurfaceVariant,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                        if (bird.saleStatus != SaleStatus.notForSale) ...[
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              _SalePill(bird: bird),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              _StatStrip(bird: bird),
            ],
          ),
        );
      },
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({required this.bird, required this.images});

  final Bird bird;
  final List<BirdImage> images;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isSaved = bird.id.isNotEmpty;

    final content = images.isEmpty
        ? CircleAvatar(
            radius: 40,
            backgroundColor: cs.primaryContainer,
            child: Icon(
              AppIcons.birdAvatar,
              size: 26,
              color: cs.onPrimaryContainer,
            ),
          )
        : ClipOval(
            child: SizedBox(
              width: 80,
              height: 80,
              child: HashImage(hash: images.first.hash),
            ),
          );

    void onTap() {
      if (images.isNotEmpty) {
        unawaited(
          ImageLightbox.show(
            context,
            hashes: [for (final image in images) image.hash],
            initialIndex: 0,
          ),
        );
      } else if (isSaved) {
        unawaited(context.router.push(BirdPhotosRoute(bird: bird)));
      }
    }

    return GestureDetector(
      onTap: images.isNotEmpty || isSaved ? onTap : null,
      child: content,
    );
  }
}

class _SalePill extends StatelessWidget {
  const _SalePill({required this.bird});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final price =
        bird.saleStatus == SaleStatus.sold ? bird.finalPrice : bird.askingPrice;
    final label = [
      bird.saleStatus.getDisplayName(context),
      if (price != null) context.money.format(price, decimals: false),
    ].join(' · ');

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: cs.tertiaryContainer,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            bird.isSold ? AppIcons.sold : AppIcons.sell,
            size: 13,
            color: cs.onTertiaryContainer,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: cs.onTertiaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatStrip extends StatelessWidget {
  const _StatStrip({required this.bird});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final summary = context.tr.bird.summary;
    final cage = bird.cageResolved?.name;

    return Container(
      decoration: BoxDecoration(
        color: cs.outlineVariant,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: cs.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          _StatCell(
            label: summary.sex,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  bird.sex.symbol,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: bird.sex.colorOf(context),
                  ),
                ),
                const SizedBox(width: 4),
                Flexible(
                  child: Text(
                    bird.sex.getDisplayName(context),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: cs.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _StatCell(label: summary.age, value: _ageLabel(context)),
          _StatCell(
            label: summary.cage,
            value: cage != null && cage.isNotEmpty ? cage : summary.unknown,
          ),
          _StatCell(
            label: summary.offspring,
            value: '${bird.childrenResolved.length}',
          ),
        ],
      ),
    );
  }

  String _ageLabel(BuildContext context) {
    final born = bird.effectiveBornAt;
    if (born == null) return context.tr.bird.summary.unknown;
    final now = bird.diedAt ?? DateTime.now();
    var months = (now.year - born.year) * 12 + (now.month - born.month);
    final years = months ~/ 12;
    months %= 12;
    if (years <= 0 && months <= 0) return '${now.difference(born).inDays} T';
    if (years > 0 && months > 0) return '$years J $months M';
    if (years > 0) return '$years J';
    return '$months M';
  }
}

class _StatCell extends StatelessWidget {
  const _StatCell({required this.label, this.value, this.child})
      : assert(value != null || child != null, 'value or child required');

  final String label;
  final String? value;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 1),
        color: cs.surface,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label.toUpperCase(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
                color: cs.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 2),
            child ??
                Text(
                  value!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: cs.onSurface,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

class _Swatch extends StatelessWidget {
  const _Swatch({required this.hex});

  final String hex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 9,
      height: 9,
      decoration: BoxDecoration(
        color: _parseHex(hex),
        shape: BoxShape.circle,
        border: Border.all(color: Theme.of(context).colorScheme.outline),
      ),
    );
  }
}

Color _parseHex(String hex) {
  var value = hex.replaceAll('#', '').trim();
  if (value.length == 6) value = 'ff$value';
  final parsed = int.tryParse(value, radix: 16);
  return parsed == null ? Colors.transparent : Color(parsed);
}
