import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                onPressed: () {}),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Cambiar Edad',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {}),
            MaterialButton(
                color: Colors.blue,
                child: Text(
                  'Añadir profesion',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
