import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/add_produto_carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_controller.g.dart';

class CarrinhoController = _CarrinhoBase with _$CarrinhoController;

abstract class _CarrinhoBase with Store {
  final AddProdutoCarrinhoRepository addProdutoCarrinhoRepository;
  final CarrinhoRepository _repository;

  _CarrinhoBase(this.addProdutoCarrinhoRepository, this._repository){
    listaCarrinho = ObservableStream(_repository.getCarrinho());
  }

  @observable
  ObservableStream<List<CarrinhoModel>> listaCarrinho;

}
