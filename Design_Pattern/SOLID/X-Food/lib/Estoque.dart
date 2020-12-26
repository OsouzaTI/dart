import '../helpers/Ordenacao.dart';
import 'Produto.dart';

class Estoque {

  List<Produto> _estoque;

  Estoque(){

    _estoque = new List<Produto>();

    Produto p1 = new Produto(TipoProduto.Bebida, "Coca-cola 500ml", 6.75);
    Produto p2 = new Produto(TipoProduto.Bebida, "Fanta laranja 1L", 8.90);
    Produto p3 = new Produto(TipoProduto.Bebida, "Pinto murcho com 2 bolas", 5.50);
    Produto p4 = new Produto(TipoProduto.Massa, "Pizza sabor boiola", 18.0);

    _estoque.add(p1);
    _estoque.add(p2);
    _estoque.add(p3);
    _estoque.add(p4);
  
  }


  int quantidadeDeProdutos(){
    return _estoque.length;
  }

  void listarProdutos(){    
    _estoque.forEach((Produto produto) => print(produto));
  }

  void listarPorPrecoCrescente(){
    List<Produto> temp = _estoque;
    Ordenacao.OrdenarEstoquePorOrdemDePreco(TipoOrdenacao.Crescente, temp);
    temp.forEach((Produto produto)=>print(produto));
  }

  void listarPorPrecoDescrescente(){
    List<Produto> temp = _estoque;
    Ordenacao.OrdenarEstoquePorOrdemDePreco(TipoOrdenacao.Decrescente, temp);
    temp.forEach((Produto produto)=>print(produto));
  }

}