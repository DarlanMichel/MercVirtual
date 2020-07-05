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

//  @observable
//  double subtotal;
//
//  @action
//  Future<double> atualizaValores(double valor) async{
//    subtotal = 0;
//
//    for(var i = 0; i < listaCarrinho.value.length; i ++ ){
//      print(subtotal);
//      subtotal += (listaCarrinho.value[i].qtd * listaCarrinho.value[i].produto.preco);
//    }
//    subtotal += valor;
//    return subtotal;
//  }

}
