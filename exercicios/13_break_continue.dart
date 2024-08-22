void main(List<String> args) {

  //O break ele sai da estrutura de repetição
  //O continue ele passa pra proxima execução da estrutura

  // for (int a = 0; a < 10; a++) {
  //   if (a == 6) {
  //     break;
  //   }
  //   print(a);
  // }

  for (int a = 0; a < 10; a++) {
    if (a % 2 == 0) {
      continue;
    }
    print(a);
  }

  print("Fora do laço");
}
