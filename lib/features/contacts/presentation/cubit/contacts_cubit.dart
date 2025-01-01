import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/domain/repositories/i_contacts_repository.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit_event.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_cubit.freezed.dart';
part 'contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState>
    with BlocPresentationMixin<ContactsState, ContactsCubitEvent> {
  ContactsCubit(this._contactsRepository)
      : super(const ContactsState.initial());

  final IContactsRepository _contactsRepository;

  Future<void> add(Contact contact) async {
    emit(const Loading());

    final result = await _contactsRepository.create(contact);

    if (result.isError) {
      emitPresentation(const ContactsEventCreateFailed());
    }

    await load();
  }

  Future<void> load() async {
    emit(const Loading());

    final result = await _contactsRepository.getAll();

    if (result.isError) {
      return emit(const ErrorScreen());
    }

    emit(Loaded(contacts: result.asValue!.value));
  }

  Future<void> edit(
    Contact contact,
  ) async {
    emit(const Loading());

    final result = await _contactsRepository.update(
      contact,
    );

    if (result.isError) {
      emitPresentation(const ContactsEventUpdateFailed());
    }

    await load();
  }

  Future<void> delete(
    Contact contact,
  ) async {
    emit(const Loading());

    final result = await _contactsRepository.delete(contact);

    if (result.isError) {
      emitPresentation(const ContactsEventDeleteFailed());
    }

    await load();
  }
}
