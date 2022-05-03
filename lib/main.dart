import 'package:flutter/material.dart';
import 'package:sanchez/galeria_joyas.dart';

void main() {
  runApp(JoyeriaApp());
}

class JoyeriaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Joyeria',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: PaginaInicial());
  } //widgets
} //clase joyeriaApp, stateless widgets
