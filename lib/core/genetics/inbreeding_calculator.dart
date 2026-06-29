import 'dart:math' as math;

import 'package:birdbreeder/models/bird/entity/bird.dart';

/// Severity buckets for an inbreeding coefficient, using the common breeding
/// references (first cousins 6.25%, half sibs/grandparent 12.5%, full sibs or
/// parent-offspring 25%).
enum InbreedingSeverity {
  none,
  low,
  elevated,
  high;

  /// Bucket for coefficient [f] (0..1).
  static InbreedingSeverity fromCoefficient(double f) {
    if (f >= 0.25) return InbreedingSeverity.high;
    if (f >= 0.125) return InbreedingSeverity.elevated;
    if (f >= 0.0625) return InbreedingSeverity.low;
    return InbreedingSeverity.none;
  }
}

/// One Wright loop: a common ancestor and how much it contributes to the
/// coefficient, with the generation distance on each parental line.
class InbreedingPath {
  const InbreedingPath({
    required this.ancestor,
    required this.sireGenerations,
    required this.damGenerations,
    required this.contribution,
  });

  final Bird ancestor;
  final int sireGenerations;
  final int damGenerations;
  final double contribution;
}

/// Result of an inbreeding calculation: the coefficient [coefficient] (0..1)
/// and the per-loop [paths] that produced it, sorted by contribution.
class InbreedingResult {
  const InbreedingResult({required this.coefficient, required this.paths});

  const InbreedingResult.none()
      : coefficient = 0,
        paths = const [];

  final double coefficient;
  final List<InbreedingPath> paths;

  InbreedingSeverity get severity =>
      InbreedingSeverity.fromCoefficient(coefficient);

  bool get hasInbreeding => coefficient > 0;

  /// Coefficient as a percentage (0..100).
  double get percent => coefficient * 100;

  /// Ids of the common ancestors contributing to the coefficient.
  Set<BirdId> get commonAncestorIds => {for (final p in paths) p.ancestor.id};
}

/// Computes the inbreeding coefficient F with Wright's path coefficient method.
///
/// F of an individual equals the coancestry of its parents:
/// `F = Σ (1/2)^(n1 + n2 + 1) · (1 + F_A)` over every loop connecting sire and
/// dam through a common ancestor `A`, where `n1`/`n2` are the generations from
/// each parent to `A` and the two half-paths share no individual but `A`.
///
/// Birds are resolved by id through the injected [resolve] callback so the
/// calculator stays pure and testable.
class InbreedingCalculator {
  InbreedingCalculator({required this.resolve, this.maxDepth = 12});

  /// Resolves a bird by id, or null when the id is null or unknown.
  final Bird? Function(BirdId? id) resolve;

  /// Safety cap on pedigree depth to bound deep or cyclic data.
  final int maxDepth;

  final Map<BirdId, double> _coefficientCache = {};

  /// Inbreeding coefficient of [bird] (the coancestry of its parents).
  InbreedingResult forBird(Bird bird) =>
      forOffspring(resolve(bird.fatherId), resolve(bird.motherId));

  /// Inbreeding coefficient of a hypothetical offspring of [sire] and [dam].
  InbreedingResult forOffspring(Bird? sire, Bird? dam) {
    if (sire == null || dam == null) return const InbreedingResult.none();

    final sirePaths = _ancestorPaths(sire);
    final damPaths = _ancestorPaths(dam);

    final paths = <InbreedingPath>[];
    var total = 0.0;
    for (final s in sirePaths) {
      for (final d in damPaths) {
        if (s.ancestor.id != d.ancestor.id) continue;
        if (_overlapsBesides(s.nodes, d.nodes, s.ancestor.id)) continue;
        final ancestorF = _coefficientOf(s.ancestor);
        final contribution =
            math.pow(0.5, s.length + d.length + 1).toDouble() * (1 + ancestorF);
        total += contribution;
        paths.add(
          InbreedingPath(
            ancestor: s.ancestor,
            sireGenerations: s.length,
            damGenerations: d.length,
            contribution: contribution,
          ),
        );
      }
    }
    paths.sort((a, b) => b.contribution.compareTo(a.contribution));
    return InbreedingResult(coefficient: total, paths: paths);
  }

  /// True when [a] and [b] share any individual other than [ancestorId].
  bool _overlapsBesides(Set<BirdId> a, Set<BirdId> b, BirdId ancestorId) {
    for (final id in a) {
      if (id == ancestorId) continue;
      if (b.contains(id)) return true;
    }
    return false;
  }

  /// F of [bird] itself, memoized. Seeds the cache with 0 before recursing so a
  /// cyclic pedigree cannot loop forever.
  double _coefficientOf(Bird bird) {
    final cached = _coefficientCache[bird.id];
    if (cached != null) return cached;
    _coefficientCache[bird.id] = 0;
    final f = forOffspring(
      resolve(bird.fatherId),
      resolve(bird.motherId),
    ).coefficient;
    _coefficientCache[bird.id] = f;
    return f;
  }

  /// All distinct ancestor paths starting at [start], each carrying the set of
  /// individuals on the path and its length in generations.
  List<_AncestorPath> _ancestorPaths(Bird start) {
    final result = <_AncestorPath>[];
    void walk(Bird bird, Set<BirdId> nodes, int length) {
      result.add(_AncestorPath(bird, nodes, length));
      if (length >= maxDepth) return;
      for (final parentId in [bird.fatherId, bird.motherId]) {
        if (parentId == null || nodes.contains(parentId)) continue;
        final parent = resolve(parentId);
        if (parent == null) continue;
        walk(parent, {...nodes, parentId}, length + 1);
      }
    }

    walk(start, {start.id}, 0);
    return result;
  }
}

class _AncestorPath {
  const _AncestorPath(this.ancestor, this.nodes, this.length);

  final Bird ancestor;
  final Set<BirdId> nodes;
  final int length;
}
