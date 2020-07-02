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

  Future save(CarrinhoModel model) =>  _repository.save(model);

  Future delete(CarrinhoModel model) => _repository.delete(model);

  Future update(CarrinhoModel model) => _repository.update(model);

//  @observable
//  int quantidade;
//
//  @observable
//  int tamanho;
//
//  @observable
//  List<ProdutoCarrinhoModel> updatedCarrinho = [];
//
//
//
//  @action
//  Future<bool> salvar(int idProduto, int qtd) async{
//
//    await updateCarrinhoRepository.getProdutoCarrinho(idProduto).then((data) {
//      updatedCarrinho = data;
//      quantidade = updatedCarrinho.length;
//    });
//
//    if(quantidade == 0){
//      return await addProdutoCarrinhoRepository.addProdutoCarrinho(idProduto, qtd);
//    }
//    else{
//      return await updateCarrinhoRepository.updateCarrinho(idProduto, qtd);
//    }
//  }
//
//  @action
//  Future<bool> update(int idProduto, int qtd) async{
//    return await updateCarrinhoRepository.decrementCarrinho(idProduto, qtd);
//  }
//
//  @action
//  Future<bool> delete(int idProduto) async{
//    return await deleteProdutoCarrinhoRepository.deleteCarrinho(idProduto);
//  }
//
//  @observable
//  double subtotal;
//
//  @action
//  Future<double> atualizaValores(double valor) async{
//    subtotal = 0;
//    if(listaCarrinho.value == null){
//      listaCarrinho = _repository.getCarrinho().asObservable();
//    }
//
//    for(var i = 0; i < listaCarrinho.value.length; i ++ ){
//      print(subtotal);
//      subtotal += (listaCarrinho.value[i].qtd * listaCarrinho.value[i].produto.preco);
//    }
//    subtotal += valor;
//    return subtotal;
//  }

}
