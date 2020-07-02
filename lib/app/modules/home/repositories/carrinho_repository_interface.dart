import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';

abstract class ICarrinhoRepository {
  Stream<List<CarrinhoModel>> getCarrinho();

  Future save(CarrinhoModel model);

  Future delete(CarrinhoModel model);

  Future update(CarrinhoModel model);
}