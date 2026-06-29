import 'package:birdbreeder/core/genetics/inbreeding_calculator.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:flutter_test/flutter_test.dart';

/// Builds an [InbreedingCalculator] over an in-memory pedigree.
InbreedingCalculator calculatorFor(List<Bird> birds) {
  final byId = {for (final b in birds) b.id: b};
  return InbreedingCalculator(resolve: (id) => id == null ? null : byId[id]);
}

/// Convenience bird with optional parents.
Bird bird(String id, {String? father, String? mother}) =>
    Bird(id: id, fatherId: father, motherId: mother);

void main() {
  group('InbreedingCalculator (Wright path method)', () {
    test('unrelated parents yield F = 0', () {
      final birds = [bird('sire'), bird('dam')];
      final calc = calculatorFor(birds);
      expect(calc.forOffspring(birds[0], birds[1]).coefficient, 0);
    });

    test('a missing parent yields F = 0', () {
      final birds = [bird('sire')];
      final calc = calculatorFor(birds);
      expect(calc.forOffspring(birds.first, null).coefficient, 0);
    });

    test('parent x offspring → 0.25', () {
      // dam is a child of sire.
      final sire = bird('sire');
      final dam = bird('dam', father: 'sire');
      final calc = calculatorFor([sire, dam]);
      expect(calc.forOffspring(sire, dam).coefficient, closeTo(0.25, 1e-9));
    });

    test('full sibs → 0.25', () {
      final gp1 = bird('gp1');
      final gp2 = bird('gp2');
      final sire = bird('sire', father: 'gp1', mother: 'gp2');
      final dam = bird('dam', father: 'gp1', mother: 'gp2');
      final calc = calculatorFor([gp1, gp2, sire, dam]);
      final result = calc.forOffspring(sire, dam);
      expect(result.coefficient, closeTo(0.25, 1e-9));
      expect(result.commonAncestorIds, {'gp1', 'gp2'});
    });

    test('half sibs → 0.125', () {
      final shared = bird('shared');
      final sire = bird('sire', father: 'shared', mother: 'm1');
      final dam = bird('dam', father: 'shared', mother: 'm2');
      final calc = calculatorFor([
        shared,
        bird('m1'),
        bird('m2'),
        sire,
        dam,
      ]);
      expect(calc.forOffspring(sire, dam).coefficient, closeTo(0.125, 1e-9));
    });

    test('first cousins → 0.0625', () {
      // Shared grandparents g1, g2; parents p1, p2 are full sibs.
      final birds = [
        bird('g1'),
        bird('g2'),
        bird('p1', father: 'g1', mother: 'g2'),
        bird('p2', father: 'g1', mother: 'g2'),
        bird('sire', father: 'p1'),
        bird('dam', father: 'p2'),
      ];
      final calc = calculatorFor(birds);
      final sire = birds[4];
      final dam = birds[5];
      expect(calc.forOffspring(sire, dam).coefficient, closeTo(0.0625, 1e-9));
    });

    test('inbred common ancestor adds the (1 + F_A) term', () {
      // A is itself a full-sib product → F_A = 0.25. Sire and dam are both
      // children of A, so they are half sibs via an inbred ancestor.
      final birds = [
        bird('gp1'),
        bird('gp2'),
        bird('pa1', father: 'gp1', mother: 'gp2'),
        bird('pa2', father: 'gp1', mother: 'gp2'),
        bird('a', father: 'pa1', mother: 'pa2'),
        bird('sire', father: 'a', mother: 'm1'),
        bird('dam', father: 'a', mother: 'm2'),
        bird('m1'),
        bird('m2'),
      ];
      final calc = calculatorFor(birds);
      final sire = birds.firstWhere((b) => b.id == 'sire');
      final dam = birds.firstWhere((b) => b.id == 'dam');
      // (1/2)^3 * (1 + 0.25) = 0.15625
      expect(calc.forOffspring(sire, dam).coefficient, closeTo(0.15625, 1e-9));
    });

    test('forBird resolves parents and matches forOffspring', () {
      final gp1 = bird('gp1');
      final gp2 = bird('gp2');
      final sire = bird('sire', father: 'gp1', mother: 'gp2');
      final dam = bird('dam', father: 'gp1', mother: 'gp2');
      final child = bird('child', father: 'sire', mother: 'dam');
      final calc = calculatorFor([gp1, gp2, sire, dam, child]);
      expect(calc.forBird(child).coefficient, closeTo(0.25, 1e-9));
    });
  });

  group('InbreedingSeverity.fromCoefficient', () {
    test('maps boundaries to the right bucket', () {
      expect(InbreedingSeverity.fromCoefficient(0), InbreedingSeverity.none);
      expect(
        InbreedingSeverity.fromCoefficient(0.0624),
        InbreedingSeverity.none,
      );
      expect(
        InbreedingSeverity.fromCoefficient(0.0625),
        InbreedingSeverity.low,
      );
      expect(
        InbreedingSeverity.fromCoefficient(0.125),
        InbreedingSeverity.elevated,
      );
      expect(
        InbreedingSeverity.fromCoefficient(0.25),
        InbreedingSeverity.high,
      );
    });
  });
}
