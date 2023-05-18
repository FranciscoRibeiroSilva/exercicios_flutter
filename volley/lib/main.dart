import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Color corDeFundo = Color.fromARGB(255, 0, 173, 195);
  final Color branco = Colors.white;
  final Color amarelo = Colors.yellow;
  final Color azul = Color.fromARGB(255, 43, 74, 142);
  final Color azulClaro = Color.fromARGB(255, 115, 207, 213);
  MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corDeFundo,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  children: [
                    Image.asset('asset/ball.png'),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text(
                          'Volley',
                          style: TextStyle(
                              color: branco,
                              fontSize: 40.0,
                              fontFamily: 'ConcertOne'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'do fim de semana',
                          style: TextStyle(
                              color: branco,
                              fontSize: 10.0,
                              fontFamily: 'ConcertOne'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 115,
              ),
              Row(
                children: [
                  RotatedBox(
                    quarterTurns: -45,
                    child: Container(
                      decoration: BoxDecoration(
                        color: azulClaro,
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: 'TIMES',
                          style: GoogleFonts.concertOne(
                              color: branco, fontSize: 45),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      MyRow(
                          nomeDoTime: 'Sicranso',
                          numJogadores: 3,
                          play: azul,
                          nome: amarelo)
                    ],
                  ),

                  /*Column(String
                    children: [
                      Card(
                        color: corDeFundo,
                        shadowColor: corDeFundo,
                        child: Row(
                          children: [
                            MyCard(
                              nomeDoTime: 'Sicranos',
                              corNome: amarelo,
                            ),
                            quantidadePlayer(cor: azul, quantJogadores: 3),
                          ],
                        ),
                      ),
                      MyCard(
                        nomeDoTime: 'Autoconvidados',
                        corNome: amarelo,
                      ),
                      MyCard(
                        nomeDoTime: 'Ziraldos',
                        corNome: amarelo,
                      ),
                      MyCard(
                        nomeDoTime: 'Sparrings',
                        corNome: amarelo,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      quantidadePlayer(cor: azul, quantJogadores: 3),
                      quantidadePlayer(cor: azul, quantJogadores: 4),
                      quantidadePlayer(cor: azul, quantJogadores: 5),
                    ],
                  )*/
                ],
              ),
              SizedBox(
                height: 50,
              ), //Concert once rotation box
              Text(
                'Jogo Casado',
                style: GoogleFonts.concertOne(color: branco),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: azul),
                onPressed: () {},
                child: Text(
                  'Iniciar',
                  style: GoogleFonts.concertOne(color: branco),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    // This trailing comma makes auto-formatting nicer for build methods.
  }
}

class MyCard extends StatelessWidget {
  final Color corNome;
  final String nomeDoTime;
  const MyCard({super.key, required this.nomeDoTime, required this.corNome});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            text: '$nomeDoTime',
            style: TextStyle(color: corNome, fontSize: 30),
          ),
        ),
      ],
    );
  }
}

class MyRow extends StatelessWidget {
  final String nomeDoTime;
  final int numJogadores;
  final Color play;
  final Color nome;
  const MyRow(
      {super.key,
      required this.nomeDoTime,
      required this.numJogadores,
      required this.play,
      required this.nome});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            style: GoogleFonts.concertOne(color: nome, fontSize: 30),
            '$nomeDoTime'),
        Text(
            style: GoogleFonts.concertOne(color: play, fontSize: 40),
            '$numJogadores'),
        RotatedBox(
          quarterTurns: -45,
          child: Text(
              style: GoogleFonts.concertOne(
                color: play,
                fontSize: 10,
              ),
              'jogadores'),
        )
      ],
    );
  }
}

class quantidadePlayer extends StatelessWidget {
  final Color cor;
  final int quantJogadores;
  const quantidadePlayer(
      {super.key, required this.cor, required this.quantJogadores});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          style: TextStyle(color: cor, fontSize: 35),
          '$quantJogadores',
        ),
        RotatedBox(
          quarterTurns: -45,
          child: Text(style: TextStyle(color: cor, fontSize: 10), 'Jogadores'),
        )
      ],
    );
  }
}
