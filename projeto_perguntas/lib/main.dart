import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _pergunta_selecionada = 0;

  void _responder() {
    setState(() {
      _pergunta_selecionada++;
    });
    print("Pergunta respondida");
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual seu instrutor favorito?',
        'respostas': ['Maria', 'Joao', 'Leo', 'Pedro'],
      },
    ];

    List<String> respostas = perguntas[_pergunta_selecionada].cast()['respostas'];
    List<Widget> widgets = respostas
    .map((texto) => Resposta(texto, _responder))
    .toList();

    // for (var textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }



    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App de escolher perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_pergunta_selecionada]['texto'].toString()),
            ...widgets,
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
