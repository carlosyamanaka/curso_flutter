import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quando_reiniciar_questionario;

  Resultado(this.pontuacao, this.quando_reiniciar_questionario);

  String get frase_resultado {
    if (pontuacao < 8) {
      return "Parabéns!";
    } else if (pontuacao < 12) {
      return "Você é bom!";
    } else if (pontuacao < 16) {
      return "Impressionante!";
    } else {
      return "Nível Jedi!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            frase_resultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
          ),
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: quando_reiniciar_questionario,
        ),
      ],
    );
  }
}
