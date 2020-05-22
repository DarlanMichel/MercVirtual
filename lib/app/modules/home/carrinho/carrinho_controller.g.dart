// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarrinhoController on _CarrinhoBase, Store {
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

  @override
  String toString() {
    final string = 'listaCarrinho: ${listaCarrinho.toString()}';
    return '{$string}';
  }
}
