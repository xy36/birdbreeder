import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // The species editor clears the incubation period when the breeder picks a
  // different suggestion, so an explicit null in copyWith has to erase the
  // old value rather than be treated as "leave unchanged".
  test('copyWith clears the incubation period when passed null', () {
    final filled = Species.create(name: 'Nymphensittich')
        .copyWith(incubationDays: 20, endangered: true);
    expect(filled.incubationDays, 20);

    final cleared = filled.copyWith(incubationDays: null);

    expect(cleared.incubationDays, isNull);
    expect(cleared.name, 'Nymphensittich');
    expect(cleared.endangered, isTrue);
  });
}
