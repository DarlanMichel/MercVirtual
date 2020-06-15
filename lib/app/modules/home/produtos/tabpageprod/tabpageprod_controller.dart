import 'package:mercadovirtual/app/modules/home/models/categoria_model.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository.dart';
import 'package:mobx/mobx.dart';

part 'tabpageprod_controller.g.dart';

class TabpageprodController = _TabpageprodBase with _$TabpageprodController;

abstract class _TabpageprodBase with Store {
  final ProdutoRepository _prodRepository;
  final CategoriaRepository _catRepository;
  final int categoria;
  int selectedCat;

  _TabpageprodBase(this._prodRepository, this.categoria, this._catRepository){
//    listaProduto = ObservableStream(_prodRepository.getProdutos(categoria));
    _prodRepository.getProdutos(categoria, pesquisa).then((data)=> listaProduto = data);
    listaCategoria = ObservableStream(_catRepository.getCategoria());
  }

  @observable
  List<ProdutoModel> listaProduto = [];
//  @observable
//  ObservableStream<List<ProdutoModel>> listaProduto;

  @observable
  ObservableStream<List<CategoriaModel>> listaCategoria;

  @observable
  String pesquisa = '';

  @action
  void setPesquisa(String _pesquisa){
    pesquisa = _pesquisa;
    _prodRepository.getProdutos(categoria, _pesquisa).then((data)=> listaProduto = data);
  }

  @action
  void changePage(int index, int categ) {
    selectedCat = index;
    _prodRepository.getProdutos(categ, pesquisa).then((data)=> listaProduto = data);
  }

//  @action
//  produtoCategoria(int categoria, int index){
//      selectedCat = index;
//    listaProduto = _prodRepository.getProdutos(categoria).asObservable();
//  }
}
