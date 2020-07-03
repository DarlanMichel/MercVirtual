 import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';

class CarrinhoModel{
   int idProduto;
   int qtd;
   String status;
   ProdutoModel produto;

   CarrinhoModel({this.idProduto, this.qtd, this.produto, this.status });

   factory CarrinhoModel.fromJson(Map doc){
     return CarrinhoModel(
       idProduto: doc["id_produto"],
       qtd: doc["qtd"],
       status: doc["status"],
       produto: ProdutoModel.fromJson(doc["produto"]),
     );
   }
 }
