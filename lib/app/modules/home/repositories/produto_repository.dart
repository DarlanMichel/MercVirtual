import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/produto_document.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository_interface.dart';

class ProdutoRepository implements IProdutoRepository {
  final HasuraConnect _hasuraConnect;

  ProdutoRepository(this._hasuraConnect);

  @override
  Stream<List<ProdutoModel>> getProduto(String desc, int categ) {
    if (categ == 0 || categ == null){
      return _hasuraConnect.subscription(produtoGetQuery, variables: {
        "desc": {"desc": "%${desc}%"},
      }).map((event) {
        return (event["data"]["produtos"] as List).map((json) {
          return ProdutoModel.fromJson(json);
        }).toList();
      });
    }else{
      return _hasuraConnect.subscription(produtoCategoriaQuery, variables: {
        "desc": {"desc": "%${desc}%"},
        "categoria": categ
      }).map((event) {
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