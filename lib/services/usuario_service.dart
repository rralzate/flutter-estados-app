import 'package:estados_app/models/usuario.dart';
import 'package:flutter/cupertino.dart';

class UsuarioService extends ChangeNotifier {
  Usuario? _usuario;

  Usuario? get usuario => _usuario;

  bool get existeUsuario => (_usuario != null) ? true : false;

  set usuario(Usuario? user) {
    _usuario = user;
    notifyListeners();
  }

  void newUsuario(String name, int edad, List<String> profesiones) {
    _usuario?.nombre = name;
    _usuario?.edad = edad;
    _usuario?.profesiones = profesiones;
    notifyListeners();
  }

  void cambiarEdad(int edad) {
    _usuario?.edad = edad;
    notifyListeners();
  }

  void eliminarUsuario() {
    _usuario = null;
    notifyListeners();
  }

  void newProfession() {
    _usuario?.profesiones.add('Profession ${_usuario!.profesiones.length + 1}');
    notifyListeners();
  }
}
