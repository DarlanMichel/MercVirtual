import 'package:mercadovirtual/app/modules/home/models/endereco_model.dart';

abstract class IEnderecoRepository {
  Stream<List<EnderecoModel>> getEndereco();

  Future save(EnderecoModel model);

  Future delete(EnderecoModel model);

  Future update(EnderecoModel model);

}
