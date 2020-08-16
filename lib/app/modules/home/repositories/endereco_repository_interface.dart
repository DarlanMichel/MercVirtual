import 'package:mercadovirtual/app/modules/home/models/endereco_model.dart';

abstract class IEnderecoRepository {
  Stream<List<EnderecoModel>> getEndereco();

  Future save(String bairro, String cep, String cidade, String complemento, String descricao, String estado, String numero, String referencia, String rua);

  Future delete(EnderecoModel model);

  Future update(EnderecoModel model);

}