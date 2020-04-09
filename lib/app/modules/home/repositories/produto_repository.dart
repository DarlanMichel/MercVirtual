import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';

class ProdutoRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  ProdutoRepository(this._hasuraConnect);


  Stream<List<ProdutoModel>> getProduto(){
    var query = ''' 
                subscription getProduto {
                  produtos(order_by: {descricao: asc}) {
                    descricao
                    preco
                    ean
                    categoria
                    codigo
                    estoque
                    unidade_medida
                  }
                 } ''';

    var snapshot = _hasuraConnect.subscription(query);

    return snapshot.map((data)=> ProdutoModel.fromJsonList(data["data"]["produtos"]));
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}