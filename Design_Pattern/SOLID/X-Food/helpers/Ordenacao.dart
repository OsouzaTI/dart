import '../lib/Produto.dart';

enum TipoOrdenacao {
  Crescente,
  Decrescente
}

class Ordenacao {
  
  static List<Produto> OrdenarEstoquePorOrdemDePreco(TipoOrdenacao tipoOrdenacao, List<Produto> lista){

    switch (tipoOrdenacao) {
      case TipoOrdenacao.Crescente:
        lista.sort(_helperOrdenacaoCrescente);
        break;
      case TipoOrdenacao.Decrescente:
        lista.sort(_helperOrdenacaoDecrescente);
        break;
      default: {
        print("Tipo de ordenação não identificada!");
        return lista;
      }
    }

  }

  /*===================
  Helpers
  ===================*/ 

  static int _helperOrdenacaoCrescente(Produto produtoAnterior, Produto produto){
    if(produtoAnterior.precoEmReais > produto.precoEmReais) return 1;
    else return -1;
  }

  static int _helperOrdenacaoDecrescente(Produto produtoAnterior, Produto produto){
    if(produtoAnterior.precoEmReais < produto.precoEmReais) return 1;
    else return -1;    
  }


}