class CarrinhoModel{
   int idProduto;
   int qtd;
   String status;
   ProdutoCart produto;

   CarrinhoModel({this.idProduto, this.qtd, this.produto, this.status });

   factory CarrinhoModel.fromJson(Map doc){
     return CarrinhoModel(
       idProduto: doc["id_produto"],
       qtd: doc["qtd"],
       status: doc["status"],
       produto: ProdutoCart.fromJson(doc["produto"]),
     );
   }
 }

 class ProdutoCart{
   String descricao;
   int ean;
   double preco;

   ProdutoCart({
     this.descricao, this.ean, this.preco,
   });

   factory ProdutoCart.fromJson(Map json){
     return ProdutoCart(
       descricao: json["descricao"],
       ean: json["ean"],
       preco: json["preco"].toDouble(),
     );
   }
 }

class Carrinho{
  int idProduto;
  int qtd;
  String status;

  Carrinho({this.idProduto, this.qtd, this.status });

  factory Carrinho.fromJson(Map doc){
    return Carrinho(
      idProduto: doc["id_produto"],
      qtd: doc["qtd"],
      status: doc["status"],
    );
  }
}