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
  Future update(EnderecoModel model) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future save(String bairro, String cep, String cidade, String complemento, String descricao, String estado, String numero, String referencia, String rua) {
    return _hasuraConnect.mutation(enderecoInsertQuery, variables: {
      "bairro": bairro,
      "cep": cep,
      "cidade": cidade,
      "complemento": complemento,
      "descricao": descricao,
      "estado": estado,
      "numero": numero,
      "referencia": referencia,
      "rua": rua
    });
  }

}
