// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PedidoController on _PedidoControllerBase, Store {
  final _$listaPedidosAtom = Atom(name: '_PedidoControllerBase.listaPedidos');

  @override
  ObservableStream<List<PedidoModel>> get listaPedidos {
    _$listaPedidosAtom.context.enforceReadPolicy(_$listaPedidosAtom);
    _$listaPedidosAtom.reportObserved();
    return super.listaPedidos;
  }

  @override
  set listaPedidos(ObservableStream<List<PedidoModel>> value) {
    _$listaPedidosAtom.context.conditionallyRunInAction(() {
      super.listaPedidos = value;
      _$listaPedidosAtom.reportChanged();
    }, _$listaPedidosAtom, name: '${_$listaPedidosAtom.name}_set');
  }

  final _$_PedidoControllerBaseActionController =
      ActionController(name: '_PedidoControllerBase');

  @override
  dynamic getPedidos() {
    final _$actionInfo = _$_PedidoControllerBaseActionController.startAction();
    try {
      return super.getPedidos();
    } finally {
      _$_PedidoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'listaPedidos: ${listaPedidos.toString()}';
    return '{$string}';
  }
}
