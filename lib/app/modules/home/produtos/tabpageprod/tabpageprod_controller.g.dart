// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabpageprod_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TabpageprodController on _TabpageprodBase, Store {
  final _$listaProdutoAtom = Atom(name: '_TabpageprodBase.listaProduto');

  @override
  List<ProdutoModel> get listaProduto {
    _$listaProdutoAtom.context.enforceReadPolicy(_$listaProdutoAtom);
    _$listaProdutoAtom.reportObserved();
    return super.listaProduto;
  }

  @override
  set listaProduto(List<ProdutoModel> value) {
    _$listaProdutoAtom.context.conditionallyRunInAction(() {
      super.listaProduto = value;
      _$listaProdutoAtom.reportChanged();
    }, _$listaProdutoAtom, name: '${_$listaProdutoAtom.name}_set');
  }

  final _$listaCategoriaAtom = Atom(name: '_TabpageprodBase.listaCategoria');

  @override
  ObservableStream<List<CategoriaModel>> get listaCategoria {
    _$listaCategoriaAtom.context.enforceReadPolicy(_$listaCategoriaAtom);
    _$listaCategoriaAtom.reportObserved();
    return super.listaCategoria;
  }

  @override
  set listaCategoria(ObservableStream<List<CategoriaModel>> value) {
    _$listaCategoriaAtom.context.conditionallyRunInAction(() {
      super.listaCategoria = value;
      _$listaCategoriaAtom.reportChanged();
    }, _$listaCategoriaAtom, name: '${_$listaCategoriaAtom.name}_set');
  }

  final _$pesquisaAtom = Atom(name: '_TabpageprodBase.pesquisa');

  @override
  String get pesquisa {
    _$pesquisaAtom.context.enforceReadPolicy(_$pesquisaAtom);
    _$pesquisaAtom.reportObserved();
    return super.pesquisa;
  }

  @override
  set pesquisa(String value) {
    _$pesquisaAtom.context.conditionallyRunInAction(() {
      super.pesquisa = value;
      _$pesquisaAtom.reportChanged();
    }, _$pesquisaAtom, name: '${_$pesquisaAtom.name}_set');
  }

  final _$_TabpageprodBaseActionController =
      ActionController(name: '_TabpageprodBase');

  @override
  void setPesquisa(String _pesquisa) {
    final _$actionInfo = _$_TabpageprodBaseActionController.startAction();
    try {
      return super.setPesquisa(_pesquisa);
    } finally {
      _$_TabpageprodBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePage(int index, int categ) {
    final _$actionInfo = _$_TabpageprodBaseActionController.startAction();
    try {
      return super.changePage(index, categ);
    } finally {
      _$_TabpageprodBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'listaProduto: ${listaProduto.toString()},listaCategoria: ${listaCategoria.toString()},pesquisa: ${pesquisa.toString()}';
    return '{$string}';
  }
}
