import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/pages/controllers/usuario_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final usuarioCtrl = Get.put(UsuarioController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Obx(() => usuarioCtrl.existeUsuario.value
          ? InformacionUsuario(usuario: usuarioCtrl.usuario.value)
          : NoInfo()),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.accessibility_new),
          onPressed: () => Get.toNamed('pagina2',
              arguments: {'nombre': 'Ricardo', 'edad': 35})),
    );
  }
}

class NoInfo extends StatelessWidget {
  const NoInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('No hay usuario seleccionado')),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({Key? key, required this.usuario}) : super(key: key);

  final Usuario usuario;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(
            title: Text('Nombre: ${usuario.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${usuario.edad}'),
          ),
          Text('Profesiones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),
          ...usuario.profesiones!.map(
            (profesion) => ListTile(
              title: Text(profesion),
            ),
          )
        ],
      ),
    );
  }
}
