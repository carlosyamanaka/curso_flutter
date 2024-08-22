import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _pergunta_selecionada = 0;
  var _pontuacao_total = 0;

  final _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Vermelho', 'pontuacao': 10},
        {'texto': 'Preto', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Leão', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'pontuacao': 10},
        {'texto': 'Joao', 'pontuacao': 5},
        {'texto': 'Leo', 'pontuacao': 3},
        {'texto': 'Pedro', 'pontuacao': 1},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (tem_pergunta_selecionada) {
      setState(() {
        _pergunta_selecionada++;
        _pontuacao_total += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _pergunta_selecionada = 0;
      _pontuacao_total = 0;
    });
  }

  bool get tem_pergunta_selecionada {
    return _pergunta_selecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App de escolher perguntas'),
        ),
        body: tem_pergunta_selecionada
            ? Questionario(
                perguntas: _perguntas,
                pergunta_selecionada: _pergunta_selecionada,
                quando_responder: _responder)
            : Center(
                child: Resultado(_pontuacao_total, _reiniciarQuestionario),
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
