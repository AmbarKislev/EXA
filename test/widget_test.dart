import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/pag1.dart';
import 'package:myapp/mispantallas/pag2.dart';
import 'package:myapp/mispantallas/pag3.dart';

void main() {
  runApp(const PanaderiaApp());
}

class PanaderiaApp extends StatelessWidget {
  const PanaderiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panadería Delicia',
      // Definición de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const Pantalla1(),
        '/segunda': (context) => const Pantalla2(),
        '/tercera': (context) => const Pantalla3(),
      },
    );
  }
}