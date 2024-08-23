import './cliente.dart';
import 'venda_item.dart';

class Venda {
  Cliente cliente;
  List<venda_item> itens;

  Venda({required this.cliente, this.itens = const []});

  double get valor_total { //Soma dos itens do carrinho
    return itens
        .map((item) => item.preco * item.quantidade) //Percorre os itens e multiplica o n de itens pelo preco pegando o valor total do produto no carrinho, retorna uma lista com o preco de cada elemento do carrinho!!
        .reduce((t, a) => t + a); //Soma todos os elementos, utilizando o reduce, onde o primeiro argumento é o numero total da soma dos incrementos e o segundo argumento é o argumento atual prestes a ser utilizado e assim gerando um unico resultado que é a soma de todos
  }
}
