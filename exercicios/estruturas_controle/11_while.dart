import 'dart:io';

void main(List<String> args) {
  String texto='sair';

  do {
    stdout.write('Digite algo, caso deseje sair: digite sair');
    texto = stdin.readLineSync().toString();
  }
  while (texto != 'sair');
}
