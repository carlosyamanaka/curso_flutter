void main(List<String> args) {
  var alunos = [
    {'nome': "Alfredo", "nota": "9.9"},
    {'nome': "Guilherme", "nota": "9.9"},
    {'nome': "Wilson", "nota": "9.9"},
    {'nome': "Mariana", "nota": "9.9"},
    {'nome': "Ana", "nota": "9.9"},
    {'nome': "Ricardo", "nota": "9.9"},
  ];

  String Function(Map) pegar_apenas_nome = (aluno) => aluno['nome'];
  int Function(String) qnt_letras = (texto) => texto.length;

  var qntletras = alunos.map(pegar_apenas_nome).map(qnt_letras);

  print(qntletras);
}
