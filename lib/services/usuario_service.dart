import 'dart:async';

import 'package:estados_app/models/usuario.dart';

class _UsuarioService {
  late Usuario _usuario;

  final StreamController<Usuario> _usuarioStreamController =
      StreamController<Usuario>.broadcast();

  Usuario get usuario => _usuario;
  bool get existeUsuario => (_usuario != null) ? true : false;

  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  void cargarUsuario(Usuario user) {
    _usuario = user;
    print(_usuario.nombre);
    print(_usuario.edad);
    _usuarioStreamController.add(_usuario);
  }

  void cambiarEdad(int edad) {
    _usuario.edad = edad;
    print(_usuario.edad);
    _usuarioStreamController.add(_usuario);
  }

  dispose() {
    _usuarioStreamController.close();
  }
}

final usuarioService = _UsuarioService();
