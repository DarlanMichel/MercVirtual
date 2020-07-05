import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';

abstract class ICarrinhoRepository {
  Stream<List<CarrinhoModel>> getCarrinho();

  Future<List<Carrinho>> getProdutoCarrinho(int idProduto);

  Future save(int idProduto, int qtd);

  Future delete(CarrinhoModel model);

  Future update(CarrinhoModel model);
}