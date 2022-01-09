class Usuario {
  String nombre = '';

  int edad = 0;

  List<String> profesiones = [];

  Usuario({required nombre, edad, profesiones}) : assert(nombre != null);
}
