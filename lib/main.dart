import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "FRASE 1",
    "FRASE 2",
    "FRASE 3",
    "FRASE 4",
    "FRASE 5",
    "FRASE 6",
    "FRASE 7",
    "FRASE 8",
  ];

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseAtual = _frases[numeroSorteado];
    });
  }

  var _fraseAtual = "Clique para gerar uma frase";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases Do Dia"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Text(_fraseAtual,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        color: Colors.black)),
                RaisedButton(
                  onPressed: _gerarFrase,
                  child: Text("NOVA FRASE",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  color: Colors.blue,
                )
              ],
            )));
  }
}
