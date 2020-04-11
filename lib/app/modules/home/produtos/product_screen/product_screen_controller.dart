import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';
import 'package:mobx/mobx.dart';

part 'product_screen_controller.g.dart';

class ProductScreenController = _ProductScreenBase
    with _$ProductScreenController;

abstract class _ProductScreenBase with Store {
  final ProdutoRepository _repository;
  final int categoria;

  _ProductScreenBase(this._repository, this.categoria){
    _repository.getProduto(categoria).then((data)=> listaProduto = data);
    //listaProduto = ObservableStream(_repository.getProduto(1));
  }

  @observable
  List<ProdutoModel> listaProduto = [];
  //ObservableStream<List<ProdutoModel>> listaProduto;
}
