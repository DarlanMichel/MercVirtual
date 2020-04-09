import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';
import 'package:mobx/mobx.dart';

part 'product_screen_controller.g.dart';

class ProductScreenController = _ProductScreenBase
    with _$ProductScreenController;

abstract class _ProductScreenBase with Store {
  final ProdutoRepository _repository;

  _ProductScreenBase(this._repository){
    listaProduto = ObservableStream(_repository.getProduto());
  }

  @observable
  ObservableStream<List<ProdutoModel>> listaProduto;
}
