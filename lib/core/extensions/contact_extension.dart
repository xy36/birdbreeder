import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

/// A bird tied to a contact, paired with the relationship direction.
///
/// The `sold` field is `true` when the bird was sold to the contact, `false`
/// when it was bought from the contact.
typedef LinkedBird = ({Bird bird, bool sold});

/// The most recent commerce event linking a bird to a contact.
typedef ContactActivity = ({Bird bird, bool sold, DateTime? date});

extension ContactListExtension on List<Contact> {
  Contact? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }

  Contact? get appUser => firstOrNullWhere((c) => c.isAppUser);
}

extension ContactExtension on Contact {
  bool isAppUser() =>
      this ==
      s1.get<BirdBreederCubit>().state.birdBreederResources.contacts.appUser;

  String get fullName {
    if (firstName == null && lastName == null) return '';
    if (firstName == null) return lastName!;
    if (lastName == null) return firstName!;
    return '$firstName $lastName';
  }

  /// Name used to sort/group the contact: last name, else first name.
  String get sortLastName {
    final last = lastName?.trim();
    if (last != null && last.isNotEmpty) return last;
    return firstName?.trim() ?? '';
  }

  /// Uppercase A–Z bucket letter for the alphabetical overview.
  ///
  /// German umlauts fold onto their base letter (Ä→A, Ö→O, Ü→U, ß→S). Anything
  /// that does not start with a Latin letter falls into the `#` bucket.
  String get groupLetter {
    final name = sortLastName;
    if (name.isEmpty) return '#';
    final first = name[0].toUpperCase();
    final folded = switch (first) {
      'Ä' => 'A',
      'Ö' => 'O',
      'Ü' => 'U',
      'ß' => 'S',
      _ => first,
    };
    return RegExp('[A-Z]').hasMatch(folded) ? folded : '#';
  }

  int get birdsSoldCount {
    return s1
        .get<BirdBreederCubit>()
        .state
        .birdBreederResources
        .birds
        .where((bird) => bird.soldToId == id)
        .length;
  }

  int get birdsBoughtCount {
    return s1
        .get<BirdBreederCubit>()
        .state
        .birdBreederResources
        .birds
        .where((bird) => bird.boughtFromId == id)
        .length;
  }

  List<Bird> get _allBirds =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.birds;

  /// Birds sold to or bought from this contact, tagged with the direction.
  List<LinkedBird> get linkedBirds => _allBirds
      .where((bird) => bird.soldToId == id || bird.boughtFromId == id)
      .map((bird) => (bird: bird, sold: bird.soldToId == id))
      .toList();

  /// Net commerce balance: income from sold birds minus spend on bought birds.
  double get commerceBalance {
    var sum = 0.0;
    for (final bird in _allBirds) {
      if (bird.soldToId == id) sum += bird.finalPrice ?? 0;
      if (bird.boughtFromId == id) sum -= bird.boughtPrice ?? 0;
    }
    return sum;
  }

  /// The most recent sale/purchase tied to this contact, if any.
  ContactActivity? get lastActivity {
    DateTime? dateOf(LinkedBird link) =>
        link.sold ? link.bird.soldAt : link.bird.boughtAt;

    final links = linkedBirds
      ..sort((a, b) {
        final da = dateOf(a);
        final db = dateOf(b);
        if (da == null && db == null) return 0;
        if (da == null) return 1;
        if (db == null) return -1;
        return db.compareTo(da);
      });
    if (links.isEmpty) return null;
    final top = links.first;
    return (bird: top.bird, sold: top.sold, date: dateOf(top));
  }

  bool changed<T>(Contact? initial, T? Function(Contact) pick) {
    if (initial == null) return false;
    final a = pick(this);
    final b = pick(initial);
    return a != b;
  }
}
