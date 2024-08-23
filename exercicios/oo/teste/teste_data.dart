import '../modelo/carro.dart';

void main(List<String> args) {
  int velocidade_max1 = 101;

  Carro carrinho = new Carro(velocidade_max1);

  //Tacalepau
  while (carrinho.velocidade_atual != velocidade_max1) {
    print("Acelerei e a nova velocidade é: ${carrinho.acelerar()}");
  }

  while (carrinho.velocidade_atual != 0) {
    print("Freiei e a nova velocidade é: ${carrinho.freiar()}");
  }

  carrinho.velocidade_atual = 2;
  print(carrinho.velocidade_atual);

  carrinho.velocidade_atual = 500;
  print(carrinho.velocidade_atual);

  carrinho.velocidade_atual = 4;
  print(carrinho.velocidade_atual);
}
