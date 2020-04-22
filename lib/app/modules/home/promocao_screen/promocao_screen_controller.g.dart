// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promocao_screen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PromocaoScreenController on _PromocaoScreenBase, Store {
  final _$listaPromocaoAtom = Atom(name: '_PromocaoScreenBase.listaPromocao');

  @override
  List<PromocaoModel> get listaPromocao {
    _$listaPromocaoAtom.context.enforceReadPolicy(_$listaPromocaoAtom);
    _$listaPromocaoAtom.reportObserved();
    return super.listaPromocao;
  }

  @override
  set listaPromocao(List<PromocaoModel> value) {
    _$listaPromocaoAtom.context.conditionallyRunInAction(() {
      super.listaPromocao = value;
      _$listaPromocaoAtom.reportChanged();
    }, _$listaPromocaoAtom, name: '${_$listaPromocaoAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'listaPromocao: ${listaPromocao.toString()}';
    return '{$string}';
  }
}
