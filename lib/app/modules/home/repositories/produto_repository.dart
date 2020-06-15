import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdutoRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  ProdutoRepository(this._hasuraConnect);

    @override
//    Stream<List<ProdutoModel>> getProdutos(int categ){
    Future<List<ProdutoModel>> getProdutos(int categ, String desc) async{
      String query = '';
//      Snapshot snapshot;
      var data;

      if (categ == 0) {
        query = '''
                query getProdutos(\$desc: String!){
                  produtos(order_by: {descricao: asc}, where: {estoque: {_gt: "0"}, descricao: {_ilike: \$desc}}) {
                    descricao
                    preco
                    ean
                    categoria
                    codigo
                    estoque
                    unidade_medida
                  }
                 } ''';
//        snapshot = _hasuraConnect.subscription(query);
        data = await _hasuraConnect.query(query, variables: {"desc": "%$desc%"});
      }
      else {
        query = ''' 
                query getProdutos(\$categoria: Int!, \$desc: String!) {
                    produtos(order_by: {descricao: asc}, where: {estoque: {_gt: "0"}, categoria: {_eq: \$categoria}, descricao: {_ilike: \$desc}}) {
                      descricao
                      preco
                      ean
                      categoria
                      codigo
                      estoque
                      unidade_medida
                    }
                  } ''';
//        snapshot = _hasuraConnect.subscription(query, variables: {"categoria": categ});
        data = await _hasuraConnect.query(query, variables: {"categoria": categ, "desc": "%$desc%"});
      }

//      return snapshot.map((data)=> ProdutoModel.fromJsonList(data["data"]["produtos"]));
      return ProdutoModel.fromJsonList(data["data"]["produtos"] as List);
    }

    //dispose will be called automatically
    @override
    void dispose() {}
  }