import 'dart:io';

void main(List<String> args) {
  print('Está chovendo? (S/N)');
  bool estaChovendo = stdin.readLineSync() == "s";

  print("Está frio? (S/N)");
  bool estaFrio = stdin.readLineSync() == "s";

  String resultado = estaChovendo || estaFrio ? "Ficar em casa" : "Sair!!";
  print(resultado);
  print(estaFrio && estaChovendo ? "Azarado!" : "Sortudo!");
}
