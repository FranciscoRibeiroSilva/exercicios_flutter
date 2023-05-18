import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 27, 27),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'O que eu tenho no meu bolso?',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: MyButton(
              cor: Colors.green,
              texto: 'VERDADEIRO',
              onTap: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: MyButton(
              cor: Colors.red,
              texto: 'FALSO',
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final Color cor;
  final String texto;
  final VoidCallback onTap;
  const MyButton(
      {super.key, required this.cor, required this.texto, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: cor),
        onPressed: onTap,
        child: Text(texto));
  }
}

List<Pergunta> listPergunta = []


class Pergunta {
  String? _pergunta;
  bool? _resposta;

  Pergunta(String pergunta, bool resposta) {
    this._pergunta = pergunta;
    this._resposta = resposta;
  }
}
