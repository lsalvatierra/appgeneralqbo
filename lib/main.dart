import 'package:appgeneralqbo/pages/my_home_page.dart';
//import 'package:appgeneralqbo/pages/second_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: MyHomePage()
        /*initialRoute: "/",
      routes: {
        "/": (BuildContext context) => MyHomePage(),
        "/second": (BuildContext context) => SecondPage()
      },*/
        );
  }
}
/*
class SecondPageArguments {
  String nombre;
  String apellido;
  SecondPageArguments({this.nombre, this.apellido});
}
*/
