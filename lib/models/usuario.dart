class Usuario {
  final String nombre = '';

  final int edad = 0;

  final List<String> profesiones = [];

  Usuario({nombre, edad, profesiones});

  Usuario copyWith({String? nombre, int? edad, List<String>? profesiones}) =>
      Usuario(
        nombre: nombre ?? this.nombre,
        edad: edad ?? this.edad,
        profesiones: profesiones ?? this.profesiones,
      );
}
