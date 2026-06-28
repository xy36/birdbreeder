import 'dart:io';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/bird_color_extension.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/models/bird/bird_filter.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

/// Ancestor pedigree ("Stammbaum") of a focal bird.
///
/// The focal bird sits on the left; each bird branches into its father and
/// mother to the right. Known parents recurse; a missing parent ends the branch
/// with an "add parent" card. Tapping a bird opens its detail.
@RoutePage()
class PedigreePage extends StatefulWidget {
  const PedigreePage({required this.bird, super.key});

  final Bird bird;

  @override
  State<PedigreePage> createState() => _PedigreePageState();
}

class _PedigreePageState extends State<PedigreePage> {
  /// Depth cap representing "Alle" — generation g holds 2^g slots, so an
  /// unbounded depth could explode the layout on cyclic or very deep data.
  static const int _allCap = 8;

  /// Selectable view depths; [_allCap] is shown as "Alle".
  static const List<int> _options = [2, 3, 4, _allCap];

  /// Current ancestor/descendant depth cap.
  int _depthLimit = 4;

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return BlocBuilder<BirdBreederCubit, BirdBreederState>(
      builder: (context, state) {
        final focal = state.birdBreederResources.birds
                .firstOrNullWhere((b) => b.id == widget.bird.id) ??
            widget.bird;
        final cap = _depthLimit;
        final stats = _PedigreeStats.of(
          focal,
          generationCap: _allCap,
          descendantCap: _allCap,
        );
        final ancestorKey = GlobalKey();
        final descendantKey = GlobalKey();

        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              leading: const AutoLeadingButton(),
              titleSpacing: 0,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(tr.pedigree.title),
                  Text(
                    '${focal.ringNumber ?? '—'} · ${tr.pedigree.subtitle}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontFamily: 'monospace',
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                ],
              ),
              actions: [
                PopupMenuButton<int>(
                  icon: const Icon(AppIcons.depth),
                  tooltip: tr.pedigree.depth,
                  initialValue: _depthLimit,
                  onSelected: (value) => setState(() => _depthLimit = value),
                  itemBuilder: (_) => [
                    for (final option in _options)
                      CheckedPopupMenuItem<int>(
                        value: option,
                        checked: _depthLimit == option,
                        child: Text(
                          option == _allCap ? tr.pedigree.depth_all : '$option',
                        ),
                      ),
                  ],
                ),
                Builder(
                  builder: (ctx) => IconButton(
                    icon: const Icon(AppIcons.iosShare),
                    tooltip: tr.pedigree.share,
                    onPressed: () => _shareTree(
                      ctx,
                      DefaultTabController.of(ctx).index == 0
                          ? ancestorKey
                          : descendantKey,
                      tr.pedigree
                          .share_filename(Ring: focal.ringNumber ?? 'vogel'),
                    ),
                  ),
                ),
              ],
              bottom: TabBar(
                tabs: [
                  Tab(text: tr.pedigree.section_ancestors),
                  Tab(text: tr.pedigree.section_descendants),
                ],
              ),
            ),
            body: Column(
              children: [
                _StatsStrip(stats: stats),
                Expanded(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      _AncestorTree(
                        focal: focal,
                        maxDepth: cap,
                        commonAncestorIds: stats.commonAncestorIds,
                        repaintKey: ancestorKey,
                      ),
                      _DescendantTree(
                        focal: focal,
                        maxDepth: cap,
                        repaintKey: descendantKey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

/// Pan + pinch-zoom viewport for large pedigrees. The content sits in a
/// [RepaintBoundary] keyed by [repaintKey] so it can be exported as an image.
class _TreeViewport extends StatelessWidget {
  const _TreeViewport({
    required this.width,
    required this.repaintKey,
    required this.child,
  });

  final double width;
  final GlobalKey repaintKey;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      constrained: false,
      minScale: 0.3,
      maxScale: 3,
      boundaryMargin: const EdgeInsets.all(200),
      child: RepaintBoundary(
        key: repaintKey,
        child: ColoredBox(
          color: Theme.of(context).colorScheme.surfaceContainerLowest,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(14, 8, 14, 24),
            child: SizedBox(width: width, child: child),
          ),
        ),
      ),
    );
  }
}

/// Compact birth/death line for a node, e.g. "* 12.03.24  † 28.05.25".
///
/// Returns null when neither date is known. Uses genealogy symbols (`*` born,
/// `†` died) so no translation is needed.
String? _lifeDates(BuildContext context, Bird bird) {
  final born = bird.effectiveBornAt;
  final died = bird.diedAt;
  if (born == null && died == null) return null;
  final format = MaterialLocalizations.of(context).formatShortDate;
  final parts = [
    if (born != null) '* ${format(born)}',
    if (died != null) '† ${format(died)}',
  ];
  return parts.join('  ');
}

/// Number of known ancestor generations above [bird], bounded by [limit].
int _ancestorDepth(Bird bird, int limit) {
  if (limit <= 0) return 0;
  final father = bird.fatherResolved;
  final mother = bird.motherResolved;
  if (father == null && mother == null) return 0;
  final fatherDepth = father == null ? 0 : _ancestorDepth(father, limit - 1);
  final motherDepth = mother == null ? 0 : _ancestorDepth(mother, limit - 1);
  return 1 + math.max(fatherDepth, motherDepth);
}

/// A bird shared between the focal's paternal and maternal lines, with the
/// generation (depth) at which it appears on each side.
class _InbreedingLoop {
  const _InbreedingLoop({
    required this.ancestor,
    required this.fatherDepth,
    required this.motherDepth,
  });

  final Bird ancestor;
  final int fatherDepth;
  final int motherDepth;
}

/// Aggregate pedigree metrics for the header strip and inbreeding detection.
class _PedigreeStats {
  const _PedigreeStats({
    required this.generations,
    required this.ancestorsKnown,
    required this.descendants,
    required this.commonAncestorIds,
    required this.inbreedingLoops,
  });

  factory _PedigreeStats.of(
    Bird focal, {
    int generationCap = 4,
    int descendantCap = 5,
  }) {
    final birdsById = <String, Bird>{};

    /// Shortest generation (parent = 1) at which each ancestor of [root]
    /// appears, capped by [generationCap].
    Map<String, int> lineDepths(Bird? root) {
      final depths = <String, int>{};
      void walk(Bird? bird, int depth) {
        if (bird == null || depth > generationCap) return;
        final existing = depths[bird.id];
        if (existing != null && existing <= depth) return;
        depths[bird.id] = depth;
        birdsById[bird.id] = bird;
        walk(bird.fatherResolved, depth + 1);
        walk(bird.motherResolved, depth + 1);
      }

      walk(root, 1);
      return depths;
    }

    final fatherDepths = lineDepths(focal.fatherResolved);
    final motherDepths = lineDepths(focal.motherResolved);
    final commonIds = fatherDepths.keys.where(motherDepths.containsKey).toSet();

    // Most-recent common ancestors: drop any common ancestor that is the parent
    // of another common ancestor (its descendant-side bird is the real loop).
    final notMostRecent = <String>{};
    for (final id in commonIds) {
      final bird = birdsById[id]!;
      for (final parentId in [bird.fatherId, bird.motherId]) {
        if (parentId != null && commonIds.contains(parentId)) {
          notMostRecent.add(parentId);
        }
      }
    }
    final mrcaIds = commonIds.difference(notMostRecent);

    final loops = [
      for (final id in mrcaIds)
        _InbreedingLoop(
          ancestor: birdsById[id]!,
          fatherDepth: fatherDepths[id]!,
          motherDepth: motherDepths[id]!,
        ),
    ]..sort(
        (a, b) => (a.fatherDepth + a.motherDepth)
            .compareTo(b.fatherDepth + b.motherDepth),
      );

    final descendantIds = <String>{};
    void walkDown(Bird bird, int depth, Set<String> path) {
      if (depth >= descendantCap) return;
      for (final child in bird.childrenResolved) {
        if (path.contains(child.id)) continue;
        descendantIds.add(child.id);
        walkDown(child, depth + 1, {...path, child.id});
      }
    }

    walkDown(focal, 0, {focal.id});

    return _PedigreeStats(
      generations: _ancestorDepth(focal, generationCap),
      ancestorsKnown: {...fatherDepths.keys, ...motherDepths.keys}.length,
      descendants: descendantIds.length,
      commonAncestorIds: mrcaIds,
      inbreedingLoops: loops,
    );
  }

  final int generations;
  final int ancestorsKnown;
  final int descendants;

  /// Most-recent common ancestors (loop entry points), used to mark nodes.
  final Set<String> commonAncestorIds;

  /// Detailed shared ancestors with their position on each parental line.
  final List<_InbreedingLoop> inbreedingLoops;

  bool get hasInbreeding => inbreedingLoops.isNotEmpty;
}

/// Captures the tree behind [repaintKey] as a PNG and opens the share sheet.
Future<void> _shareTree(
  BuildContext context,
  GlobalKey repaintKey,
  String filename,
) async {
  final boundary =
      repaintKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
  if (boundary == null) return;
  final image = await boundary.toImage(pixelRatio: 2.5);
  final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
  if (bytes == null) return;
  final dir = await getTemporaryDirectory();
  final file = File('${dir.path}/$filename.png');
  await file.writeAsBytes(bytes.buffer.asUint8List());
  await Share.shareXFiles([XFile(file.path)]);
}

class _StatsStrip extends StatelessWidget {
  const _StatsStrip({required this.stats});

  final _PedigreeStats stats;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final p = context.tr.pedigree;
    final warn = context.appColors.statusWarning;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      decoration: BoxDecoration(
        color: cs.surfaceContainerLow,
        border: Border(bottom: BorderSide(color: cs.outlineVariant)),
      ),
      child: Wrap(
        spacing: 8,
        runSpacing: 6,
        children: [
          _StatChip(label: p.stats.generations, value: '${stats.generations}'),
          _StatChip(label: p.stats.ancestors, value: '${stats.ancestorsKnown}'),
          _StatChip(label: p.stats.descendants, value: '${stats.descendants}'),
          _StatChip(
            label: stats.hasInbreeding
                ? p.stats.inbreeding
                : p.stats.no_inbreeding,
            value:
                stats.hasInbreeding ? '${stats.inbreedingLoops.length}' : '✓',
            icon: stats.hasInbreeding ? AppIcons.warning : null,
            color: stats.hasInbreeding ? warn : null,
            onTap: stats.hasInbreeding
                ? () => showModalBottomSheet<void>(
                      context: context,
                      showDragHandle: true,
                      builder: (_) =>
                          _InbreedingSheet(loops: stats.inbreedingLoops),
                    )
                : null,
          ),
        ],
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({
    required this.label,
    required this.value,
    this.icon,
    this.color,
    this.onTap,
  });

  final String label;
  final String value;
  final IconData? icon;
  final Color? color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final accent = color ?? cs.onSurfaceVariant;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: color?.withValues(alpha: 0.5) ?? cs.outlineVariant,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 13, color: accent),
              const SizedBox(width: 4),
            ],
            Text(
              value,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: accent,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              label.toUpperCase(),
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
                color: cs.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Explains which ancestors are shared between both parental lines.
class _InbreedingSheet extends StatelessWidget {
  const _InbreedingSheet({required this.loops});

  final List<_InbreedingLoop> loops;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final p = context.tr.pedigree;
    final warn = context.appColors.statusWarning;
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(AppIcons.warning, size: 18, color: warn),
                const SizedBox(width: 8),
                Text(
                  p.stats.inbreeding,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              p.inbreeding_explainer,
              style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
            ),
            const SizedBox(height: 12),
            for (final loop in loops) _InbreedingRow(loop: loop),
          ],
        ),
      ),
    );
  }
}

class _InbreedingRow extends StatelessWidget {
  const _InbreedingRow({required this.loop});

  final _InbreedingLoop loop;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final p = context.tr.pedigree;
    final bird = loop.ancestor;
    final sexColor = bird.sex.colorOf(context);
    final color = bird.colorResolved;

    return InkWell(
      onTap: () => context.router.push(BirdRoute(bird: bird)),
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bird.sex.symbol,
              style: TextStyle(
                color: sexColor,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        bird.ringNumber ?? '—',
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (color != null) ...[
                        const SizedBox(width: 8),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            color: color.swatch ?? Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(color: cs.outline),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          color.name ?? '—',
                          style: TextStyle(
                            fontSize: 11,
                            color: cs.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 3),
                  Text(
                    '${p.via_father}: ${_generationLabel(context, loop.fatherDepth)}',
                    style: TextStyle(fontSize: 11, color: cs.onSurfaceVariant),
                  ),
                  Text(
                    '${p.via_mother}: ${_generationLabel(context, loop.motherDepth)}',
                    style: TextStyle(fontSize: 11, color: cs.onSurfaceVariant),
                  ),
                ],
              ),
            ),
            Icon(AppIcons.chevronRight, size: 18, color: cs.onSurfaceVariant),
          ],
        ),
      ),
    );
  }
}

const double _columnWidth = 180;
const double _connectorWidth = 28;
const double _columnStride = _columnWidth + _connectorWidth;
const double _rowSlot = 76;

/// Ancestor tree of the focal bird. Every known bird sends out two branches
/// (father on top, mother below). A known parent recurses one generation up; a
/// missing parent shows an "add parent" leaf card that ends that branch.
class _AncestorTree extends StatelessWidget {
  const _AncestorTree({
    required this.focal,
    required this.maxDepth,
    required this.commonAncestorIds,
    required this.repaintKey,
  });

  final Bird focal;
  final int maxDepth;
  final Set<String> commonAncestorIds;
  final GlobalKey repaintKey;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final layout = _AncestorLayout(focal, maxDepth, commonAncestorIds);
    final contentWidth =
        (layout.maxDepth + 1) * _columnStride - _connectorWidth;
    final gridHeight = math.max(_rowSlot, layout.totalLeaves * _rowSlot);

    return _TreeViewport(
      width: contentWidth,
      repaintKey: repaintKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _HeaderRow(depth: layout.maxDepth),
          const SizedBox(height: 6),
          SizedBox(
            height: gridHeight,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CustomPaint(
                    painter:
                        _EdgePainter(edges: layout.edges, color: cs.outline),
                  ),
                ),
                for (final node in layout.nodes)
                  Positioned(
                    left: node.depth * _columnStride,
                    top: node.center * _rowSlot - _rowSlot / 2,
                    width: _columnWidth,
                    height: _rowSlot,
                    child: Center(child: _ancestorNode(context, node)),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _ancestorNode(BuildContext context, _AncestorPlaced node) {
    final bird = node.bird;
    if (bird != null) {
      return _PedigreeNode(
        bird: bird,
        focal: node.focal,
        highlightCommon: node.highlightCommon,
        onTap: () => context.router.push(BirdRoute(bird: bird)),
      );
    }
    return _UnknownNode(
      assignChild: node.assignChild,
      assignSide: node.assignSide,
    );
  }
}

/// A node placed by [_AncestorLayout]. Either a real [bird] or, when [bird] is
/// null, an "add parent" leaf that assigns [assignSide] (0 = father, 1 = mother)
/// of [assignChild].
class _AncestorPlaced {
  const _AncestorPlaced({
    required this.depth,
    required this.center,
    this.bird,
    this.focal = false,
    this.highlightCommon = false,
    this.assignChild,
    this.assignSide,
  });

  final int depth;
  final double center;
  final Bird? bird;
  final bool focal;
  final bool highlightCommon;
  final Bird? assignChild;
  final int? assignSide;
}

/// Tidy layout for the ragged ancestor tree: each bird is centered over its two
/// parent branches and leaves get sequential vertical slots. Mirrors
/// [_DescendantLayout] but branches are the two parents and missing parents
/// become "add parent" leaves that terminate the branch.
class _AncestorLayout {
  _AncestorLayout(Bird focal, this._maxDepth, this._commonAncestorIds) {
    _place(focal, 0, const {}, focal: true);
  }

  final int _maxDepth;
  final Set<String> _commonAncestorIds;
  final List<_AncestorPlaced> nodes = [];
  final List<_TreeEdge> edges = [];
  int maxDepth = 0;
  double totalLeaves = 0;

  double _place(Bird bird, int depth, Set<String> seen, {bool focal = false}) {
    maxDepth = math.max(maxDepth, depth);
    final branchCenters = <double>[];
    // Expand parents unless the depth cap is hit or the bird already appears on
    // this line (cycle guard). At the cap the bird is a plain leaf.
    if (depth < _maxDepth && !seen.contains(bird.id)) {
      final next = {...seen, bird.id};
      for (var side = 0; side < 2; side++) {
        final parent = side == 0 ? bird.fatherResolved : bird.motherResolved;
        branchCenters.add(
          parent != null && !seen.contains(parent.id)
              ? _place(parent, depth + 1, next)
              : _placeLeaf(bird, side, depth + 1),
        );
      }
    }

    final double center;
    if (branchCenters.isEmpty) {
      center = totalLeaves + 0.5;
      totalLeaves += 1;
    } else {
      center = (branchCenters.first + branchCenters.last) / 2;
      for (final cy in branchCenters) {
        edges.add(_TreeEdge(depth, center, depth + 1, cy));
      }
    }
    nodes.add(
      _AncestorPlaced(
        depth: depth,
        center: center,
        bird: bird,
        focal: focal,
        highlightCommon: _commonAncestorIds.contains(bird.id),
      ),
    );
    return center;
  }

  double _placeLeaf(Bird child, int side, int depth) {
    maxDepth = math.max(maxDepth, depth);
    final center = totalLeaves + 0.5;
    totalLeaves += 1;
    nodes.add(
      _AncestorPlaced(
        depth: depth,
        center: center,
        assignChild: child,
        assignSide: side,
      ),
    );
    return center;
  }
}

/// Generation labels above the ancestor columns (Vogel, Eltern, Großeltern, …).
class _HeaderRow extends StatelessWidget {
  const _HeaderRow({required this.depth});

  final int depth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var g = 0; g <= depth; g++)
          SizedBox(
            width: g == depth ? _columnWidth : _columnStride,
            child: Text(
              _generationLabel(context, g).toUpperCase(),
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
      ],
    );
  }
}

/// Column/generation label for [generation] (0 = focal, 1 = parents, …),
/// used by the header row and the inbreeding sheet.
String _generationLabel(BuildContext context, int generation) {
  final p = context.tr.pedigree;
  final labels = [
    p.col_bird,
    p.col_parents,
    p.col_grandparents,
    p.col_greatgrandparents,
  ];
  return generation < labels.length ? labels[generation] : p.col_ancestors;
}

/// Recursive descendant tree below the focal bird. Birds may have any number
/// of children, so this renders as an indented list rather than a binary grid.
/// Descendant tree: focal on the left, children to the right. Birds may have
/// any number of children, so a tidy layered layout is computed (each node is
/// vertically centered over its children) and drawn with connector lines.
class _DescendantTree extends StatelessWidget {
  const _DescendantTree({
    required this.focal,
    required this.maxDepth,
    required this.repaintKey,
  });

  final Bird focal;
  final int maxDepth;
  final GlobalKey repaintKey;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final layout = _DescendantLayout(focal, maxDepth);
    final contentWidth =
        (layout.maxDepth + 1) * _columnStride - _connectorWidth;
    final gridHeight = math.max(_rowSlot, layout.totalLeaves * _rowSlot);

    return _TreeViewport(
      width: contentWidth,
      repaintKey: repaintKey,
      child: SizedBox(
        height: gridHeight,
        child: Stack(
          children: [
            Positioned.fill(
              child: CustomPaint(
                painter: _EdgePainter(edges: layout.edges, color: cs.outline),
              ),
            ),
            for (final node in layout.nodes)
              Positioned(
                left: node.depth * _columnStride,
                top: node.center * _rowSlot - _rowSlot / 2,
                width: _columnWidth,
                height: _rowSlot,
                child: Center(
                  child: _PedigreeNode(
                    bird: node.bird,
                    focal: node.depth == 0,
                    onTap: () =>
                        context.router.push(BirdRoute(bird: node.bird)),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _PlacedNode {
  const _PlacedNode(this.bird, this.depth, this.center);

  final Bird bird;
  final int depth;
  final double center;
}

class _TreeEdge {
  const _TreeEdge(this.parentDepth, this.parentY, this.childDepth, this.childY);

  final int parentDepth;
  final double parentY;
  final int childDepth;
  final double childY;
}

/// Computes a tidy layout for the descendant tree: leaves get sequential
/// vertical slots and each parent is centered over its children.
class _DescendantLayout {
  _DescendantLayout(Bird focal, this._maxDepth) {
    _place(focal, 0, {});
  }

  final int _maxDepth;
  final List<_PlacedNode> nodes = [];
  final List<_TreeEdge> edges = [];
  int maxDepth = 0;
  double totalLeaves = 0;

  double _place(Bird bird, int depth, Set<String> seen) {
    maxDepth = math.max(maxDepth, depth);
    final children = depth >= _maxDepth
        ? const <Bird>[]
        : bird.childrenResolved.where((c) => !seen.contains(c.id)).toList();

    final double center;
    if (children.isEmpty) {
      center = totalLeaves + 0.5;
      totalLeaves += 1;
    } else {
      final next = {...seen, bird.id};
      final childCenters = [
        for (final child in children) _place(child, depth + 1, next),
      ];
      center = (childCenters.first + childCenters.last) / 2;
      for (final cy in childCenters) {
        edges.add(_TreeEdge(depth, center, depth + 1, cy));
      }
    }
    nodes.add(_PlacedNode(bird, depth, center));
    return center;
  }
}

class _EdgePainter extends CustomPainter {
  const _EdgePainter({required this.edges, required this.color});

  final List<_TreeEdge> edges;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    for (final e in edges) {
      final parentX = e.parentDepth * _columnStride + _columnWidth;
      final childX = e.childDepth * _columnStride;
      final midX = (parentX + childX) / 2;
      final py = e.parentY * _rowSlot;
      final cy = e.childY * _rowSlot;
      final path = Path()
        ..moveTo(parentX, py)
        ..lineTo(midX, py)
        ..lineTo(midX, cy)
        ..lineTo(childX, cy);
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(_EdgePainter oldDelegate) =>
      oldDelegate.edges != edges || oldDelegate.color != color;
}

class _PedigreeNode extends StatelessWidget {
  const _PedigreeNode({
    required this.bird,
    required this.onTap,
    this.focal = false,
    this.highlightCommon = false,
  });

  final Bird bird;
  final bool focal;
  final bool highlightCommon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final warn = context.appColors.statusWarning;
    final danger = context.appColors.statusError;
    final sexColor = bird.sex.colorOf(context);
    final color = bird.colorResolved;
    final isOwn = bird.isOwn;
    final deceased = bird.diedAt != null;
    final fg = focal ? cs.onPrimaryContainer : cs.onSurface;
    final mutedFg = focal
        ? cs.onPrimaryContainer.withValues(alpha: 0.85)
        : cs.onSurfaceVariant;
    final dates = _lifeDates(context, bird);

    final border = highlightCommon
        ? Border.all(color: warn, width: 2)
        : focal
            ? Border.all(color: cs.primary, width: 2)
            : Border(left: BorderSide(color: sexColor, width: 3));

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: focal ? cs.primaryContainer : cs.surface,
          borderRadius: BorderRadius.circular(10),
          border: border,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  bird.sex.symbol,
                  style: TextStyle(
                    color: sexColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    bird.ringNumber ?? '—',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: fg,
                    ),
                  ),
                ),
                if (highlightCommon)
                  Tooltip(
                    message: context.tr.pedigree.common_ancestor,
                    child: Icon(AppIcons.warning, size: 13, color: warn),
                  ),
                if (!isOwn) ...[
                  const SizedBox(width: 3),
                  Tooltip(
                    message: context.tr.pedigree.not_own,
                    child: Icon(
                      AppIcons.sell,
                      size: 13,
                      color: cs.onSurfaceVariant,
                    ),
                  ),
                ],
                if (deceased) ...[
                  const SizedBox(width: 3),
                  Tooltip(
                    message: context.tr.pedigree.deceased,
                    child: Text(
                      '†',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: danger,
                      ),
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: color?.swatch ?? Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(color: cs.outline),
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    color?.name ?? '—',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 9, color: mutedFg),
                  ),
                ),
              ],
            ),
            if (dates != null) ...[
              const SizedBox(height: 3),
              Text(
                dates,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 9,
                  color: mutedFg,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _UnknownNode extends StatelessWidget {
  const _UnknownNode({this.assignChild, this.assignSide});

  /// The known bird whose parent this empty slot represents; tapping assigns
  /// its father (side 0) or mother (side 1). Null → not assignable.
  final Bird? assignChild;
  final int? assignSide;

  Future<void> _assign(BuildContext context) async {
    final child = assignChild;
    final side = assignSide;
    if (child == null || side == null) return;
    final cubit = context.read<BirdBreederCubit>();
    final parentSex = side == 0 ? Sex.male : Sex.female;
    final picked = await onPickBird(
      context,
      birdFilter: BirdFilter(sexes: [parentSex, Sex.unknown]),
    );
    if (picked == null) return;
    await cubit.updateBird(
      side == 0
          ? child.copyWith(fatherId: picked.id)
          : child.copyWith(motherId: picked.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final p = context.tr.pedigree;
    final canAssign = assignChild != null;
    final label =
        canAssign ? (assignSide == 0 ? p.add_father : p.add_mother) : p.unknown;

    return InkWell(
      onTap: canAssign ? () => _assign(context) : null,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: cs.surfaceContainerLow,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: canAssign ? cs.primary : cs.outlineVariant,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 8),
        child: Row(
          children: [
            Icon(
              canAssign ? AppIcons.add : AppIcons.sexUnknown,
              size: 13,
              color: cs.onSurfaceVariant,
            ),
            const SizedBox(width: 5),
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 11,
                  fontStyle: canAssign ? FontStyle.normal : FontStyle.italic,
                  color: cs.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
