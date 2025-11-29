import 'package:birdbreeder/features/contacts/cubit/contact_cubit_event.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_cubit.freezed.dart';
part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState>
    with BlocPresentationMixin<ContactState, ContactCubitEvent> {
  ContactCubit(
    this.birdBreederCubit, {
    required this.initialContact,
  }) : super(
          ContactState.loading(
            contact: initialContact ?? Contact.create(),
            mode:
                initialContact == null ? ContactMode.create : ContactMode.edit,
          ),
        ) {
    initialContact = state.contact;
  }

  Contact? initialContact;
  final BirdBreederCubit birdBreederCubit;

  bool get isDirty => initialContact != state.contact;

  Future<void> changeContact(Contact contact) async {
    return emit(
      ContactState.loaded(
        contact: contact,
        mode: state.mode,
      ),
    );
  }

  Future<void> save() async {
    final result = switch (state.mode) {
      ContactMode.create => await birdBreederCubit.addContact(state.contact),
      ContactMode.edit => await birdBreederCubit.updateContact(state.contact),
    };

    if (result == null) {
      return emit(
        ContactLoaded(
          contact: state.contact,
          mode: state.mode,
        ),
      );
    }

    initialContact = result;

    emit(
      ContactLoaded(
        contact: result,
        mode: ContactMode.edit,
      ),
    );

    emitPresentation(
      const ContactCubitEvent.saved(),
    );
  }

  Future<void> delete() async {
    emit(
      ContactLoading(
        contact: state.contact,
        mode: state.mode,
      ),
    );

    await birdBreederCubit.deleteContact(state.contact);

    emitPresentation(
      const ContactCubitEvent.deleted(),
    );
  }
}
