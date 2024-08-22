main() {
  saudar_pessoa(idade: 33, nome: "João");
  saudar_pessoa(nome: "Maria");
}

saudar_pessoa({required String nome, int? idade}) {
  print("Olá ${nome} nem parece que você tem ${idade} anos");
}
