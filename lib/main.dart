import 'package:flutter/material.dart';

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
          primarySwatch: Colors.blue,
        ),
        home: PaginaInicial());
  } //widgets
} //clase joyeriaApp, stateless widgets

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg",
    "assets/images/6.jpg",
    "assets/images/7.jpg",
    "assets/images/8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Articulos|Joyas"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 8,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
