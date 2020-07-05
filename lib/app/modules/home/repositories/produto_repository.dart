import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/produto_document.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository_interface.dart';

class ProdutoRepository implements IProdutoRepository {
  final HasuraConnect _hasuraConnect;

  ProdutoRepository(this._hasuraConnect);

  @override
  Future<List<ProdutoModel>> getProduto(String desc, int categ) {
    if (categ == 0 || categ == null){
      return _hasuraConnect.query(produtoGetQuery, variables: {
        "desc":  "%${desc}%",
      }).then((event) {
        return (event["data"]["produtos"] as List).map((json) {
          return ProdutoModel.fromJson(json);
        }).toList();
      });
    }else{
      return _hasuraConnect.query(produtoCategoriaQuery, variables: {
        "desc": "%${desc}%",
        "categoria": categ
      }).then((event) {
        return (event["data"]["produtos"] as List).map((json) {
          return ProdutoModel.fromJson(json);
        }).toList();
      });
    }

  }

  //dispose will be called automatically
  @override
  void dispose() {}

  }