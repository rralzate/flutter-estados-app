import 'package:estados_app/models/usuario.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  void seleccrionarUsuario(Usuario user) {
    emit(UsuarioActivo(user));
  }

  void agregarUsuario(String name, int edad, List<String> profesiones) {
    Usuario usuario =
        Usuario(nombre: name, edad: edad, profesiones: profesiones);
    emit(UsuarioActivo(usuario));
  }

  void cambiarEdad(int edad) {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final newUser = currentState.usuario.copyWith(edad: edad);

      emit(UsuarioActivo(newUser));
    }
  }

  void agregarProfesion() {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final newProfesiones = [
        ...currentState.usuario.profesiones,
        'Profesion ${currentState.usuario.profesiones.length + 1}'
      ];
      final newUser =
          currentState.usuario.copyWith(profesiones: newProfesiones);

      emit(UsuarioActivo(newUser));
    }
  }

  void borrarUsuario() {
    emit(UsuarioInitial());
  }
}
