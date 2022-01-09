import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);
    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
            ? Text('Nombre: ${usuarioService.usuario!.nombre}')
            : Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Establecer usuario',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  List<String> profesiones = [
                    'Fullstack Developer',
                    'Video Jugador Experto'
                  ];

                  final newUser = Usuario(
                      nombre: 'Ricardo', edad: 25, profesiones: profesiones);

                  usuarioService.usuario = newUser;
                  usuarioService.newUsuario('Ricardo Reyes', 43, profesiones);
                }),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Cambiar Edad',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  usuarioService.cambiarEdad(30);
                }),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Añadir profesion',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  usuarioService.newProfession();
                }),
          ],
        ),
      ),
    );
  }
}
