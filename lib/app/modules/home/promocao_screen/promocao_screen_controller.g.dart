// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promocao_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PromocaoScreenController on _PromocaoScreenBase, Store {
  final _$listaPromocaoAtom = Atom(name: '_PromocaoScreenBase.listaPromocao');

  @override
  ObservableStream<List<PromocaoModel>> get listaPromocao {
    _$listaPromocaoAtom.context.enforceReadPolicy(_$listaPromocaoAtom);
    _$listaPromocaoAtom.reportObserved();
    return super.listaPromocao;
  }

  @override
  set listaPromocao(ObservableStream<List<PromocaoModel>> value) {
    _$listaPromocaoAtom.context.conditionallyRunInAction(() {
      super.listaPromocao = value;
      _$listaPromocaoAtom.reportChanged();
    }, _$listaPromocaoAtom, name: '${_$listaPromocaoAtom.name}_set');
  }

  final _$_PromocaoScreenBaseActionController =
      ActionController(name: '_PromocaoScreenBase');

  @override
  dynamic getPromocao() {
    final _$actionInfo = _$_PromocaoScreenBaseActionController.startAction();
    try {
      return super.getPromocao();
    } finally {
      _$_PromocaoScreenBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'listaPromocao: ${listaPromocao.toString()}';
    return '{$string}';
  }
}
