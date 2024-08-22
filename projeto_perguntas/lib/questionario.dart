import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int pergunta_selecionada;
  final void Function(int) quando_responder;

  Questionario({
    required this.perguntas,
    required this.pergunta_selecionada,
    required this.quando_responder,
  });

  bool get tem_pergunta_selecionada {
    return pergunta_selecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = tem_pergunta_selecionada
        ? perguntas[pergunta_selecionada].cast()["respostas"]
            as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[pergunta_selecionada]['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(
              resp['texto'] as String,
              () => quando_responder(
                    int.parse(resp['pontuacao'].toString()),
                  ));
        }).toList(),
      ],
    );
  }
}
