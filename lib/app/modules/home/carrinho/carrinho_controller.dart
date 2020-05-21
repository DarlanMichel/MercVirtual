import 'package:mercadovirtual/app/modules/home/repositories/add_produto_carrinho_repository.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_controller.g.dart';

class CarrinhoController = _CarrinhoBase with _$CarrinhoController;

abstract class _CarrinhoBase with Store {
  final AddProdutoCarrinhoRepository addProdutoCarrinhoRepository;

  _CarrinhoBase(this.addProdutoCarrinhoRepository);

}
