import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/promocao_document.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/promocao_repository_interface.dart';

class PromocaoRepository implements IPromocaoRepository {
  final HasuraConnect _hasuraConnect;

  PromocaoRepository(this._hasuraConnect);

  @override
  Stream<List<ProdutoModel>> getPromocao(String data){
    return _hasuraConnect.subscription(promocaoQuery, variables: {
      "data": data
    }).map((event) {
      return (event["data"]["produtos"] as List).map((json) {
        return ProdutoModel.fromJson(json);
      }).toList();
    });

  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
