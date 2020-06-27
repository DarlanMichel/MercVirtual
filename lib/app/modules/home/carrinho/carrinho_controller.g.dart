// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarrinhoController on _CarrinhoBase, Store {
  final _$quantidadeAtom = Atom(name: '_CarrinhoBase.quantidade');

  @override
  int get quantidade {
    _$quantidadeAtom.context.enforceReadPolicy(_$quantidadeAtom);
    _$quantidadeAtom.reportObserved();
    return super.quantidade;
  }

  @override
  set quantidade(int value) {
    _$quantidadeAtom.context.conditionallyRunInAction(() {
      super.quantidade = value;
      _$quantidadeAtom.reportChanged();
    }, _$quantidadeAtom, name: '${_$quantidadeAtom.name}_set');
  }

  final _$id_ProdutoAtom = Atom(name: '_CarrinhoBase.id_Produto');

  @override
  int get id_Produto {
    _$id_ProdutoAtom.context.enforceReadPolicy(_$id_ProdutoAtom);
    _$id_ProdutoAtom.reportObserved();
    return super.id_Produto;
  }

  @override
  set id_Produto(int value) {
    _$id_ProdutoAtom.context.conditionallyRunInAction(() {
      super.id_Produto = value;
      _$id_ProdutoAtom.reportChanged();
    }, _$id_ProdutoAtom, name: '${_$id_ProdutoAtom.name}_set');
  }

  final _$updatedCarrinhoAtom = Atom(name: '_CarrinhoBase.updatedCarrinho');

  @override
  List<ProdutoCarrinhoModel> get updatedCarrinho {
    _$updatedCarrinhoAtom.context.enforceReadPolicy(_$updatedCarrinhoAtom);
    _$updatedCarrinhoAtom.reportObserved();
    return super.updatedCarrinho;
  }

  @override
  set updatedCarrinho(List<ProdutoCarrinhoModel> value) {
    _$updatedCarrinhoAtom.context.conditionallyRunInAction(() {
      super.updatedCarrinho = value;
      _$updatedCarrinhoAtom.reportChanged();
    }, _$updatedCarrinhoAtom, name: '${_$updatedCarrinhoAtom.name}_set');
  }

  final _$listaCarrinhoAtom = Atom(name: '_CarrinhoBase.listaCarrinho');

  @override
  ObservableStream<List<CarrinhoModel>> get listaCarrinho {
    _$listaCarrinhoAtom.context.enforceReadPolicy(_$listaCarrinhoAtom);
    _$listaCarrinhoAtom.reportObserved();
    return super.listaCarrinho;
  }

  @override
  set listaCarrinho(ObservableStream<List<CarrinhoModel>> value) {
    _$listaCarrinhoAtom.context.conditionallyRunInAction(() {
      super.listaCarrinho = value;
      _$listaCarrinhoAtom.reportChanged();
    }, _$listaCarrinhoAtom, name: '${_$listaCarrinhoAtom.name}_set');
  }

  final _$salvarAsyncAction = AsyncAction('salvar');

  @override
  Future<bool> salvar(int idProduto, int qtd) {
    return _$salvarAsyncAction.run(() => super.salvar(idProduto, qtd));
  }

  final _$deleteAsyncAction = AsyncAction('delete');

  @override
  Future<bool> delete(int idProduto) {
    return _$deleteAsyncAction.run(() => super.delete(idProduto));
  }

  @override
  String toString() {
    final string =
        'quantidade: ${quantidade.toString()},id_Produto: ${id_Produto.toString()},updatedCarrinho: ${updatedCarrinho.toString()},listaCarrinho: ${listaCarrinho.toString()}';
    return '{$string}';
  }
}
