 class CarrinhoModel{
   int idProduto;
   int qtd;
   Produto produto;

   CarrinhoModel({this.idProduto, this.qtd, this.produto });

   factory CarrinhoModel.fromJson(Map doc){
     return CarrinhoModel(
       idProduto: doc["id_produto"],
       qtd: doc["qtd"],
       produto: Produto.fromJson(doc["produto"]),
     );
   }
 }

 class Produto{
   String descricao;
   int ean;
   double preco;

   Produto({this.descricao, this.ean, this.preco});

   factory Produto.fromJson(Map doc){
     return Produto(
       descricao: doc["descricao"],
       ean: doc["ean"],
       preco: doc["preco"].toDouble(),
     );
   }
 }