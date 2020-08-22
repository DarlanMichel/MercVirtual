// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagamento_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PagamentoController on _PagamentoControllerBase, Store {
  final _$listaFormaPagtoAtom =
      Atom(name: '_PagamentoControllerBase.listaFormaPagto');

  @override
  ObservableStream<List<FormaPagtoModel>> get listaFormaPagto {
    _$listaFormaPagtoAtom.context.enforceReadPolicy(_$listaFormaPagtoAtom);
    _$listaFormaPagtoAtom.reportObserved();
    return super.listaFormaPagto;
  }

  @override
  set listaFormaPagto(ObservableStream<List<FormaPagtoModel>> value) {
    _$listaFormaPagtoAtom.context.conditionallyRunInAction(() {
      super.listaFormaPagto = value;
      _$listaFormaPagtoAtom.reportChanged();
    }, _$listaFormaPagtoAtom, name: '${_$listaFormaPagtoAtom.name}_set');
  }

  final _$_PagamentoControllerBaseActionController =
      ActionController(name: '_PagamentoControllerBase');

  @override
  dynamic getFormaPagto() {
    final _$actionInfo =
        _$_PagamentoControllerBaseActionController.startAction();
    try {
      return super.getFormaPagto();
    } finally {
      _$_PagamentoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'listaFormaPagto: ${listaFormaPagto.toString()}';
    return '{$string}';
  }
}
