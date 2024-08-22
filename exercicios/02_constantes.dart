import 'dart:io';

void main(List<String> args) {
  const PI = 3.1415;

  stdout.write("Informe o raio: ");
  final entradaDoUsuario = stdin.readLineSync()!;
  final raio = double.parse(entradaDoUsuario);

  final area = PI * raio * raio;

  print('O valor digitado é: ' + area.toString());
}
