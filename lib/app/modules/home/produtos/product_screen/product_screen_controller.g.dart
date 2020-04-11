// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductScreenController on _ProductScreenBase, Store {
  final _$listaProdutoAtom = Atom(name: '_ProductScreenBase.listaProduto');

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

  @override
  String toString() {
    final string = 'listaProduto: ${listaProduto.toString()}';
    return '{$string}';
  }
}
