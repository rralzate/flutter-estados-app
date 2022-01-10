import 'package:estados_app/bloc/user/user_bloc.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UserBloc>(context, listen: false);

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
                      edad: 36,
                      profesiones: ['Fullstak developer']);
                  userBloc.add(ActivateUser(newUser));
                }),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Cambiar Edad',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  userBloc.add(ChangeUseAgeEvent(25));
                }),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Añadir profesion',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  userBloc.add(AddProfessionEven('Nueva profession'));
                }),
          ],
        ),
      ),
    );
  }
}
