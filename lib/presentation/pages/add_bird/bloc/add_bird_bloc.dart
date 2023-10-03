import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_bird_event.dart';
part 'add_bird_state.dart';
part 'add_bird_bloc.freezed.dart';

class AddBirdBloc extends Bloc<AddBirdEvent, AddBirdState> {
  AddBirdBloc() : super(_Initial()) {
    on<AddBirdEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
