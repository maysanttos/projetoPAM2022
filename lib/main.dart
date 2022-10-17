import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Programa de Ordenação de Número',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0x196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController pNota = TextEditingController();
  TextEditingController sNota = TextEditingController();
  String media = "";
  String status = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Aplicativo Cálculo de Média '),
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.brightness_4,
                color: const Color(0xFF68a9ac), size: 76.0),
            new Text(
              "Primeira Nota:",
              style: new TextStyle(
                  fontSize: 26.0,
                  color: const Color(0xFF0a11e1),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: pNota,
              style: new TextStyle(
                  fontSize: 27.0,
                  color: const Color(0xFFa218dd),
                  fontWeight: FontWeight.w800,
                  fontFamily: "Roboto"),
            ),
            new Text(
              "Segunda Nota:",
              style: new TextStyle(
                  fontSize: 26.0,
                  color: const Color(0xFF0611e6),
                  fontWeight: FontWeight.w700,
                  fontFamily: "Roboto"),
            ),
            new TextField(
              controller: sNota,
              style: new TextStyle(
                  fontSize: 26.0,
                  color: const Color(0xFFae38c4),
                  fontWeight: FontWeight.w800,
                  fontFamily: "Roboto"),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Resultado:",
                    style: new TextStyle(
                        fontSize: 25.0,
                        color: const Color(0xFF0e18e1),
                        fontWeight: FontWeight.w800,
                        fontFamily: "Roboto"),
                  ),
                  new Text(
                    media,
                    style: new TextStyle(
                        fontSize: 23.0,
                        color: const Color(0xFFec1a1a),
                        fontWeight: FontWeight.w800,
                        fontFamily: "Roboto"),
                  )
                ]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Situação:",
                    style: new TextStyle(
                        fontSize: 26.0,
                        color: const Color(0xFF0f19dd),
                        fontWeight: FontWeight.w800,
                        fontFamily: "Roboto"),
                  ),
                  new Text(
                    status,
                    style: new TextStyle(
                        fontSize: 26.0,
                        color: const Color(0xFFdb2c2c),
                        fontWeight: FontWeight.w800,
                        fontFamily: "Roboto"),
                  )
                ]),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                      key: null,
                      onPressed: buttonPressed,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Calcular",
                        style: new TextStyle(
                            fontSize: 27.0,
                            color: const Color(0xFF2ad9be),
                            fontWeight: FontWeight.w800,
                            fontFamily: "Roboto"),
                      )),
                  new RaisedButton(
                      key: null,
                      onPressed: limpar,
                      color: const Color(0xFFe0e0e0),
                      child: new Text(
                        "Limpar",
                        style: new TextStyle(
                            fontSize: 27.0,
                            color: const Color(0xFFdd1898),
                            fontWeight: FontWeight.w800,
                            fontFamily: "Roboto"),
                      ))
                ])
          ]),
    );
  }

  void buttonPressed() {
    double pN, sN, me;
    pN = double.parse(pNota.text);
    sN = double.parse(sNota.text);
    me = (pN + sN) / 2;
    setState(() {
      media = me.toStringAsFixed(2);
      if (me >= 7) {
        status = "Aluno Aprovado";
      } else {
        status = "Aluno Reprovado";
      }
    });
  }

  void limpar() {
    pNota.text = "";
    sNota.text = "";
    sNota.text = "Digite a Segunda";
    setState(() {
      media = "";
      status = "";
    });
  }
}
