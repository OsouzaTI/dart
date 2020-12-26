enum TipoProduto {
  Massa,
  Bebida
}

class Produto {

  TipoProduto _tipoProduto;
  String      _nomeProduto;
  double      _precoReais;
  
  Produto(
    this._tipoProduto,
    this._nomeProduto,
    this._precoReais
  );

  // Produto(TipoProduto tipoProduto, String nomeProduto, double precoReais){
  //   this._tipoProduto = tipoProduto;
  //   this._nomeProduto = nomeProduto;
  //   this._precoReais = precoReais;
  // }

  get tipoDoProduto     => _tipoProduto;
  get nomeProduto       => _nomeProduto;
  get precoEmReais      => _precoReais;

  @override
  String toString() {
    // TODO: implement toString
    return "Produto(Tipo: $_tipoProduto, Nome: $_nomeProduto, Preco: $_precoReais)";
  }

}