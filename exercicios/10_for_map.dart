main() {
  Map notas = {
    "Joao": 12,
    "Bia": 94,
    "Pedro": 65,
  };

  for (var nome in notas.keys) {
    print('O nome do aluno é $nome e a nota é ${notas[nome]}');
  }

  for (var nota in notas.values) {
    print('A nota é ${nota}');
  }

  for (var valores in notas.entries) {
    print('A nome do aluno é ${valores.key} e a nota é ${valores.value}');
  }
}
