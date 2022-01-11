import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/pages/controllers/usuario_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //print(Get.arguments);

    final usarioCtrl = Get.find<UsuarioController>();

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
                  final newUser =
                      Usuario(nombre: 'Ricardo', edad: 35, profesiones: []);
                  usarioCtrl.cargarUsuario(newUser);
                  Get.snackbar('Usuario Establecido', 'Ricardo Reyes',
                      backgroundColor: Colors.white,
                      boxShadows: [
                        BoxShadow(color: Colors.black38, blurRadius: 10)
                      ]);
                }),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Cambiar Edad',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  usarioCtrl.cambiarEdad(25);
                }),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Añadir profesion',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  usarioCtrl.agregarProfecion(
                      'Profesion #${usarioCtrl.profesionesCount + 1}');
                }),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Cambiar Tema',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Get.changeTheme(
                      Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
                }),
          ],
        ),
      ),
    );
  }
}
