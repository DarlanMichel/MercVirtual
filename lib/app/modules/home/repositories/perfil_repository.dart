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

  @override
  Future save(String nome, String email, String id) {
    return _hasuraConnect.mutation(updateClienteQuery, variables: {
      "email": email,
      "nome": nome,
      "id": id,
    });
  }

  //dispose will be called automatically
  @override
  void dispose() {}

  @override
  Future insert(String nome, String email, String id) async{
    return await _hasuraConnect.mutation(insertClienteQuery, variables: {
      "nome": nome,
      "email": email,
      "id": id,
    });
  }
}
