import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';

abstract class IProdutoRepository{
  Future<List<ProdutoModel>> getProduto(int categ);
}

class ProdutoRepository implements IProdutoRepository {
  final HasuraConnect _hasuraConnect;

  ProdutoRepository(this._hasuraConnect);

//  @override
//  Stream<List<ProdutoModel>> getProduto(int categ){
  @override
  Future<List<ProdutoModel>> getProduto(int categ) async{
      var query = ''' 
                getProduto(\$categoria:Int!) {
                  produtos(where: {categoria: {_eq: \$categoria}}, order_by: {descricao: asc}) {
                    descricao
                    preco
                    ean
                    categoria
                    codigo
                    estoque
                    unidade_medida
                  }
                 } ''';

      //var snapshot = _hasuraConnect.subscription(query, variables: {"categoria": categ});
      var data = await _hasuraConnect.query(query, variables: {"categoria": categ});
      //snapshot.changeVariable({"categoria": categ});

      //return snapshot.map((data)=> ProdutoModel.fromJsonList(data["data"]["produtos"]));
      return ProdutoModel.fromJsonList(data["data"]["produtos"] as List);
    }

    //dispose will be called automatically
    @override
    void dispose() {}
  }