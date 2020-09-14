import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';

abstract class IPromocaoRepository{
  Stream<List<ProdutoModel>> getPromocao(String data);
}