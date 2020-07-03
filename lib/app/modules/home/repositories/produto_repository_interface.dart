import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';

abstract class IProdutoRepository{
  Stream<List<ProdutoModel>> getProduto(String desc, int categ);
}