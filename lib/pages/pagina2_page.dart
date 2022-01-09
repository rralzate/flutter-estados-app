import 'package:estados_app/bloc/usuario/usuario_cubit.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.read<UsuarioCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
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
                  final newUser = Usuario(
                      nombre: 'Ricardo',
                      edad: 34,
                      profesiones: ['Fullstack developer', 'Video Jugador']);
                  usuarioCubit.seleccrionarUsuario(newUser);
                  usuarioCubit.agregarUsuario(
                      'Ricardo', 34, ['Fullstack developer', 'Video Jugador']);
                }),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Cambiar Edad',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  usuarioCubit.cambiarEdad(30);
                }),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Añadir profesion',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  usuarioCubit.agregarProfesion();
                }),
          ],
        ),
      ),
    );
  }
}
