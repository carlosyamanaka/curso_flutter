import '../modelo/cliente.dart';
import '../modelo/produto.dart';
import '../modelo/venda.dart';
import '../modelo/venda_item.dart';

main() {
  Cliente pedrinho = Cliente(nome: "pedrinho", cpf: "123.456.789-0");

  Produto sonho = Produto(codigo: 01, nome: "sonho", preco: 110);
  Produto arvore =
      Produto(codigo: 02, nome: "árvore", preco: 20, desconto: 50.0);
  Produto geladeira = Produto(
      codigo: 03, nome: "geladeira frosfree", preco: 35, desconto: 10.0);

  venda_item item_pedrinho_1 = venda_item(produto: sonho, quantidade: 2);
  venda_item item_pedrinho_2 = venda_item(produto: geladeira);
  venda_item item_pedrinho_3 = venda_item(produto: arvore, quantidade: 10);

  var venda1 = Venda(
      cliente: pedrinho,
      itens: [item_pedrinho_1, item_pedrinho_2, item_pedrinho_3]);

  var venda2 = Venda(
      cliente: Cliente(
        nome: 'Fafa',
        cpf: '123.123.123.-12',
      ),
      itens: <venda_item>[
        venda_item(
            produto: Produto(
                codigo: 04, nome: "Caneta bic", preco: 6.0, desconto: 0.5)),
        venda_item(
            produto: Produto(
                codigo: 05, nome: "Caderno", preco: 20.0, desconto: 0.3)),
        venda_item(quantidade: 100, produto: Produto(codigo: 52, nome: "Borracha", preco: 10.1))
      ]);
}
