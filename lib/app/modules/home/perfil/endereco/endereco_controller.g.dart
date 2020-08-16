// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EnderecoController on _EnderecoControllerBase, Store {
  final _$listaEnderecoAtom =
      Atom(name: '_EnderecoControllerBase.listaEndereco');

  @override
  ObservableStream<List<EnderecoModel>> get listaEndereco {
    _$listaEnderecoAtom.context.enforceReadPolicy(_$listaEnderecoAtom);
    _$listaEnderecoAtom.reportObserved();
    return super.listaEndereco;
  }

  @override
  set listaEndereco(ObservableStream<List<EnderecoModel>> value) {
    _$listaEnderecoAtom.context.conditionallyRunInAction(() {
      super.listaEndereco = value;
      _$listaEnderecoAtom.reportChanged();
    }, _$listaEnderecoAtom, name: '${_$listaEnderecoAtom.name}_set');
  }

  final _$_EnderecoControllerBaseActionController =
      ActionController(name: '_EnderecoControllerBase');

  @override
  dynamic getEndereco() {
    final _$actionInfo =
        _$_EnderecoControllerBaseActionController.startAction();
    try {
      return super.getEndereco();
    } finally {
      _$_EnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'listaEndereco: ${listaEndereco.toString()}';
    return '{$string}';
  }
}
