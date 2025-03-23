import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/contacts/data/dtos/contact_dto.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit_event.dart';
import 'package:birdbreeder/shared/repositories/ressource_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_cubit.freezed.dart';
part 'contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState>
    with BlocPresentationMixin<ContactsState, ContactsCubitEvent> {
  ContactsCubit(this.ressourceRepository) : super(const ContactsLoaded());

  final RessourceRepository<ContactDto> ressourceRepository;

  Future<void> add(Contact contact) async {
    emit(const ContactsLoading());

    final result = await ressourceRepository.create(contact.toDto());

    if (result.isError) {
      emitPresentation(const ContactsEventCreateFailed());
    }
  }

  Future<void> edit(
    Contact contact,
  ) async {
    emit(const ContactsLoading());

    final result = await ressourceRepository.update(
      contact.id,
      contact.toDto(),
    );

    if (result.isError) {
      emitPresentation(const ContactsEventUpdateFailed());
    }
  }

  Future<void> delete(
    Contact contact,
  ) async {
    emit(const ContactsLoading());

    final result = await ressourceRepository.delete(contact.id);

    if (result.isError) {
      emitPresentation(const ContactsEventDeleteFailed());
    }
  }
}
