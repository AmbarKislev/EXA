import 'package:flutter/material.dart';
import 'mispantallas/pag1.dart';
import 'mispantallas/pag2.dart';
import 'mispantallas/pag3.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const Pantalla1(),
        '/segunda': (context) => const Pantalla2(),
        '/tercera': (context) => const Pantalla3(),
      },
    );
  }
}