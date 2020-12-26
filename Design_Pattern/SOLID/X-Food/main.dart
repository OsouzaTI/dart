/*===================
Aplicação meramente para fins didáticos
===================*/ 

import 'lib/Estoque.dart';

void main(){
  print("X-Food iniciado!");

  Estoque estoque = new Estoque();
  print("\nProdutos sem ordem");
  estoque.listarProdutos();
  print("\nProdutos em Ordem Crescente");
  estoque.listarPorPrecoCrescente();
  print("\nProdutos em Ordem Descrescente");
  estoque.listarPorPrecoDescrescente();

}