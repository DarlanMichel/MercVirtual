import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/perfil_document.dart';
import 'package:mercadovirtual/app/modules/home/models/perfil_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository_interface.dart';


class PerfilRepository implements IPerfilRepository {
  final HasuraConnect _hasuraConnect;

  PerfilRepository(this._hasuraConnect);

  @override
  Stream<List<PerfilModel>> getNome(){
    return _hasuraConnect.subscription(nomeQuery).map((event) {
      return (event["data"]["cliente"] as List).map((json) {
        return PerfilModel.fromJson(json);
      }).toList();
    });
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
