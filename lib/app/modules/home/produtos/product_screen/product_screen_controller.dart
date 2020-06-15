import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';
import 'package:mobx/mobx.dart';

part 'product_screen_controller.g.dart';

class ProductScreenController = _ProductScreenBase
    with _$ProductScreenController;

abstract class _ProductScreenBase with Store {
//  final ProdutoRepository _repository;
//  final int categoria;
//
//  _ProductScreenBase(this._repository, this.categoria){
//      listaProduto = ObservableStream(_repository.getProdutos(categoria));
//  }
//
//  @observable
//  ObservableStream<List<ProdutoModel>> listaProduto;

//  @observable
//  List<ProdutoModel> listaProdutoCat = [];
//
//  @action
//  Future<List<ProdutoModel>> produtoCategoria(int categoria) async{
//    var result = await _repository.getProdutoCat(categoria).then((data) => listaProdutoCat = data);
//    return result;
//  }
}
