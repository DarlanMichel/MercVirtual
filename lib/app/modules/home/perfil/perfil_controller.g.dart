// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perfil_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PerfilController on _PerfilBase, Store {
  final _$listaNomeAtom = Atom(name: '_PerfilBase.listaNome');

  @override
  ObservableStream<List<PerfilModel>> get listaNome {
    _$listaNomeAtom.context.enforceReadPolicy(_$listaNomeAtom);
    _$listaNomeAtom.reportObserved();
    return super.listaNome;
  }

  @override
  set listaNome(ObservableStream<List<PerfilModel>> value) {
    _$listaNomeAtom.context.conditionallyRunInAction(() {
      super.listaNome = value;
      _$listaNomeAtom.reportChanged();
    }, _$listaNomeAtom, name: '${_$listaNomeAtom.name}_set');
  }

  final _$_PerfilBaseActionController = ActionController(name: '_PerfilBase');

  @override
  dynamic getNome() {
    final _$actionInfo = _$_PerfilBaseActionController.startAction();
    try {
      return super.getNome();
    } finally {
      _$_PerfilBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'listaNome: ${listaNome.toString()}';
    return '{$string}';
  }
}
