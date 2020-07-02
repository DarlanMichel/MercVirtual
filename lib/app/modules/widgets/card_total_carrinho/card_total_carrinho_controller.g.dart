// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_total_carrinho_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardTotalCarrinhoController on _CardTotalCarrinhoBase, Store {
  final _$subtotalAtom = Atom(name: '_CardTotalCarrinhoBase.subtotal');

  @override
  double get subtotal {
    _$subtotalAtom.context.enforceReadPolicy(_$subtotalAtom);
    _$subtotalAtom.reportObserved();
    return super.subtotal;
  }

  @override
  set subtotal(double value) {
    _$subtotalAtom.context.conditionallyRunInAction(() {
      super.subtotal = value;
      _$subtotalAtom.reportChanged();
    }, _$subtotalAtom, name: '${_$subtotalAtom.name}_set');
  }

  final _$_CardTotalCarrinhoBaseActionController =
      ActionController(name: '_CardTotalCarrinhoBase');

  @override
  void sum() {
    final _$actionInfo = _$_CardTotalCarrinhoBaseActionController.startAction();
    try {
      return super.sum();
    } finally {
      _$_CardTotalCarrinhoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'subtotal: ${subtotal.toString()}';
    return '{$string}';
  }
}
