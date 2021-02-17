//import 'package:appgeneralqbo/pages/second_page.dart';
//import 'package:appgeneralqbo/main.dart';
import 'package:appgeneralqbo/pages/second_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nombreController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso básico de navigator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Nombre"),
              controller: nombreController,
            ),
            RaisedButton(
                child: Text("Mostrar segunda pantalla"),
                onPressed: () {
                  _showSecondPage(context);
                }),
          ],
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context) {
      return SecondPage(
        valor: nombreController.text,
      );
    });
    Navigator.of(context).push(route);
    /*Navigator.of(context).pushNamed("/second",
        arguments:
            SecondPageArguments(nombre: "Luis", apellido: "Salvatierra"));*/
  }

  @override
  void initState() {
    super.initState();
    nombreController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nombreController.dispose();
  }
}
