import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key, this.valor}) : super(key: key);
  final String valor;
  //const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SecondPageArguments arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda pantalla"),
      ),
      body: Center(
        child: Text("Aqui obtengo el dato " + valor),
      ),
    );
  }
}
