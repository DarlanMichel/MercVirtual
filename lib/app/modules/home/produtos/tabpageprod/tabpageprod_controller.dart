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
  final int categoria;

  @observable
  List<ProdutoModel> listaProduto = [];

  @observable
  ObservableStream<List<CategoriaModel>> listaCategoria;

  _TabpageprodBase(this._prodRepository, this._catRepository, this.categoria){
    getProdutos(pesquisa, categoria);
    getCategorias();
  }

  @action
  getProdutos(String desc, int cat){
    _prodRepository.getProduto(desc, cat).then((data)=> listaProduto = data);
  }

  @action
  getCategorias(){
    listaCategoria = _catRepository.getCategoria().asObservable();
  }

  @observable
  int selectedCat;

  @observable
  String pesquisa = '';

  @action
  void setPesquisa(String _pesquisa){
    pesquisa = _pesquisa;
    _prodRepository.getProduto(_pesquisa, categoria).then((data)=> listaProduto = data);
  }

  @action
  void changePage(int index, int categ) {
    selectedCat = index;
    _prodRepository.getProduto(pesquisa, categ).then((data)=> listaProduto = data);
  }

}
