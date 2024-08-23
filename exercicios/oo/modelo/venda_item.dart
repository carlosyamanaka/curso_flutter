import 'produto.dart';

class venda_item {
  Produto produto;
  int quantidade;
  double _preco = 0;

  venda_item({required this.produto, this.quantidade = 1});

  double get preco {
    if (produto != 0) {
      _preco = produto.preco_com_desconto;
    }
    return _preco;
  }

  void set preco(double novo_preco) {
    if(novo_preco > 0) {
      
    }
  }
}
