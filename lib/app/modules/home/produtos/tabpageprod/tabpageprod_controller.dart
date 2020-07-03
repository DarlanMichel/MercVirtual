import 'package:mercadovirtual/app/modules/home/models/categoria_model.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/produto_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'tabpageprod_controller.g.dart';

class TabpageprodController = _TabpageprodBase with _$TabpageprodController;

abstract class _TabpageprodBase with Store {
  final IProdutoRepository _prodRepository;
  final ICategoriaRepository _catRepository;
  final int cat;
  int selectedCat;

  @observable
  ObservableStream<List<ProdutoModel>> listaProduto;

  @observable
  ObservableStream<List<CategoriaModel>> listaCategoria;

  _TabpageprodBase(this._prodRepository, this._catRepository, this.cat){
    getProdutos(pesquisa, cat);
    getCategorias();
  }

  @action
  getProdutos(String desc, int categ){
    listaProduto = _prodRepository.getProduto(desc, categ).asObservable();
  }

  @action
  getCategorias(){
    listaCategoria = _catRepository.getCategoria().asObservable();
  }

  @observable
  String pesquisa = '';

  @action
  void setPesquisa(String _pesquisa){
    pesquisa = _pesquisa;
    getProdutos(_pesquisa, cat);
  }

  @action
  void changePage(int index, int categ) {
    selectedCat = index;
    getProdutos(pesquisa, categ);
  }

}
