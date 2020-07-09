import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_controller.g.dart';

class CarrinhoController = _CarrinhoBase with _$CarrinhoController;

abstract class _CarrinhoBase with Store {
  final ICarrinhoRepository _repository;

  @observable
  ObservableStream<List<CarrinhoModel>> listaCarrinho;

  _CarrinhoBase(ICarrinhoRepository this._repository){
    getList();
  }

  @action
  getList(){
    listaCarrinho = _repository.getCarrinho().asObservable();
  }

  Future save(int idProduto, int qtd) =>  _repository.save(idProduto, qtd);

  Future delete(CarrinhoModel model) => _repository.delete(model);

  Future update(CarrinhoModel model) => _repository.update(model);

  @computed
  double get subtotal => listaCarrinho.value.map((item) => item.produto.preco * item.qtd).reduce((value, element) => value + element);

}
