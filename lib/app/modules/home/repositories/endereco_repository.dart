import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/endereco_document.dart';
import 'package:mercadovirtual/app/modules/home/models/endereco_model.dart';
import 'endereco_repository_interface.dart';

class EnderecoRepository implements IEnderecoRepository {
  final HasuraConnect _hasuraConnect;

  EnderecoRepository(this._hasuraConnect);

  @override
  Stream<List<EnderecoModel>> getEndereco() {
    return _hasuraConnect.subscription(enderecoQuery).map((event) {
      return (event["data"]["enderecos"] as List).map((json) {
        return EnderecoModel.fromJson(json);
      }).toList();
    });
  }

  @override
  Future delete(EnderecoModel model) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future save(EnderecoModel model) {
    return _hasuraConnect.mutation(enderecoInsertQuery, variables: {
      "bairro": model.bairro,
      "cep": model.cep,
      "cidade": model.cidade,
      "complemento": model.complemento,
      "descricao": model.descricao,
      "estado": model.estado,
      "numero": model.numero,
      "referencia": model.referencia,
      "rua": model.rua
    });
  }

  @override
  Future update(EnderecoModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }

}
