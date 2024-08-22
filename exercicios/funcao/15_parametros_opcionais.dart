import 'dart:math';

main() {
  int numero_aleatorio([int maximo = 11]) {
    return Random().nextInt(maximo);
  }

  imprimir_data([int dia = 1, int mes = 1, ano = 1970]) {
    print("${dia}, ${mes}, ${ano}");
  }
  
  int n1 = numero_aleatorio(100);
  print(n1);

  int n2 = numero_aleatorio();
  print(n2);

  imprimir_data(10, 12, 2020);
  imprimir_data(10, 12);
  imprimir_data(10);
  imprimir_data();

}
