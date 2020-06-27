import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_carrinho_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/add_produto_carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/delete_produto_carrinho_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/update_carrinho_repository.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_controller.g.dart';

class CarrinhoController = _CarrinhoBase with _$CarrinhoController;

abstract class _CarrinhoBase with Store {
  final AddProdutoCarrinhoRepository addProdutoCarrinhoRepository;
  final UpdateCarrinhoRepository updateCarrinhoRepository;
  final DeleteProdutoCarrinhoRepository deleteProdutoCarrinhoRepository;
  final CarrinhoRepository _repository;

  _CarrinhoBase(this.addProdutoCarrinhoRepository, this._repository, this.updateCarrinhoRepository, this.deleteProdutoCarrinhoRepository){
    listaCarrinho = ObservableStream(_repository.getCarrinho());
  }

  @observable
  int quantidade;

  @observable
  int id_Produto;

  @observable
  List<ProdutoCarrinhoModel> updatedCarrinho = [];

  @observable
  ObservableStream<List<CarrinhoModel>> listaCarrinho;

  @action
  Future<bool> salvar(int idProduto, int qtd) async{

    await updateCarrinhoRepository.getProdutoCarrinho(idProduto).then((data) {
      updatedCarrinho = data;
      quantidade = updatedCarrinho.length;
    });

    if(quantidade == 0){
      return await addProdutoCarrinhoRepository.addProdutoCarrinho(idProduto, qtd);
    }
    else{
      return await updateCarrinhoRepository.updateCarrinho(idProduto, qtd);
    }
  }

  @action
  Future<bool> delete(int idProduto) async{
    return await deleteProdutoCarrinhoRepository.deleteCarrinho(idProduto);
  }

}
