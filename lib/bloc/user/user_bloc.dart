import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:estados_app/models/usuario.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserInitialState()) {
    on<ActivateUser>((event, emit) => emit(UserSetState(event.user)));

    on<ChangeUseAgeEvent>((event, emit) {
      if (!state.existUser) return;

      emit(UserSetState(state.user!.copyWith(edad: event.age)));
    });

    on<AddProfessionEven>((event, emit) {
      if (!state.existUser) return;

      final profession = [...state.user!.profesiones, event.profession];
      emit(UserSetState(state.user!.copyWith(profesiones: profession)));
    });

    on<DeleteUserEvent>((event, emit) => emit(const UserInitialState()));
  }
}
