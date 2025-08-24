import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/generic_search_cubit.dart';

class ContactSearchCubit extends GenericSearchCubit<Contact> {
  ContactSearchCubit()
      : super((item, query) {
          final firstName = (item.firstName ?? '').toLowerCase();
          final lastName = (item.name ?? '').toLowerCase();
          final number = (item.number ?? '').toLowerCase();
          return firstName.contains(query) ||
              lastName.contains(query) ||
              number.contains(query);
        });
}
