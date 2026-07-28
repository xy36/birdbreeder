import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/utils/natural_compare.dart';

/// One row in the alphabetically grouped contacts list: either a letter
/// [ContactHeaderItem] or a [ContactEntryItem] carrying a contact.
sealed class ContactListItem {
  const ContactListItem();
}

/// A section header for a group of contacts sharing the same [letter].
class ContactHeaderItem extends ContactListItem {
  const ContactHeaderItem({required this.letter, required this.count});

  final String letter;
  final int count;
}

/// A single contact row.
class ContactEntryItem extends ContactListItem {
  const ContactEntryItem(this.contact);

  final Contact contact;
}

/// Result of grouping contacts: the flat `items` list (headers + entries), a
/// `letterIndex` mapping each present letter to its header's flat index (for
/// jump-scroll), and the `letters` present in display order.
typedef GroupedContacts = ({
  List<ContactListItem> items,
  Map<String, int> letterIndex,
  List<String> letters,
});

/// Groups [contacts] into alphabetical sections by last name.
///
/// Sorted by `sortLastName` then first name (natural order).
/// The `#` bucket (contacts without a Latin-letter name) is placed last.
GroupedContacts groupContactsByLetter(List<Contact> contacts) {
  final sorted = [...contacts]..sort((a, b) {
      final byLast = naturalCompare(a.sortLastName, b.sortLastName);
      if (byLast != 0) return byLast;
      return naturalCompare(a.firstName ?? '', b.firstName ?? '');
    });

  final buckets = <String, List<Contact>>{};
  for (final contact in sorted) {
    buckets.putIfAbsent(contact.groupLetter, () => []).add(contact);
  }

  final letters = buckets.keys.toList()
    ..sort((a, b) {
      if (a == '#') return 1;
      if (b == '#') return -1;
      return a.compareTo(b);
    });

  final items = <ContactListItem>[];
  final letterIndex = <String, int>{};
  for (final letter in letters) {
    final group = buckets[letter]!;
    letterIndex[letter] = items.length;
    items
      ..add(ContactHeaderItem(letter: letter, count: group.length))
      ..addAll(group.map(ContactEntryItem.new));
  }

  return (items: items, letterIndex: letterIndex, letters: letters);
}
