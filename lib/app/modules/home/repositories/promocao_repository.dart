import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/promocao_document.dart';
import 'package:mercadovirtual/app/modules/home/models/promocao_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/promocao_repository_interface.dart';

class PromocaoRepository implements IPromocaoRepository {
  final HasuraConnect _hasuraConnect;

  PromocaoRepository(this._hasuraConnect);

  @override
  Stream<List<PromocaoModel>> getPromocao(){
    return _hasuraConnect.subscription(promocaoQuery).map((event) {
      return (event["data"]["promocao"] as List).map((json) {
        return PromocaoModel.fromJson(json);
      }).toList();
    });

  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
