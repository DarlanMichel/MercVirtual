// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarrinhoController on _CarrinhoBase, Store {
  Computed<double> _$subtotalComputed;

  @override
  double get subtotal =>
      (_$subtotalComputed ??= Computed<double>(() => super.subtotal)).value;

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

  final _$listaFormaPagtoAtom = Atom(name: '_CarrinhoBase.listaFormaPagto');

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

  final _$selectedEnderecoAtom = Atom(name: '_CarrinhoBase.selectedEndereco');

  @override
  EnderecoModel get selectedEndereco {
    _$selectedEnderecoAtom.context.enforceReadPolicy(_$selectedEnderecoAtom);
    _$selectedEnderecoAtom.reportObserved();
    return super.selectedEndereco;
  }

  @override
  set selectedEndereco(EnderecoModel value) {
    _$selectedEnderecoAtom.context.conditionallyRunInAction(() {
      super.selectedEndereco = value;
      _$selectedEnderecoAtom.reportChanged();
    }, _$selectedEnderecoAtom, name: '${_$selectedEnderecoAtom.name}_set');
  }

  final _$selectedFormaPagtoAtom =
      Atom(name: '_CarrinhoBase.selectedFormaPagto');

  @override
  FormaPagtoModel get selectedFormaPagto {
    _$selectedFormaPagtoAtom.context
        .enforceReadPolicy(_$selectedFormaPagtoAtom);
    _$selectedFormaPagtoAtom.reportObserved();
    return super.selectedFormaPagto;
  }

  @override
  set selectedFormaPagto(FormaPagtoModel value) {
    _$selectedFormaPagtoAtom.context.conditionallyRunInAction(() {
      super.selectedFormaPagto = value;
      _$selectedFormaPagtoAtom.reportChanged();
    }, _$selectedFormaPagtoAtom, name: '${_$selectedFormaPagtoAtom.name}_set');
  }

  final _$_CarrinhoBaseActionController =
      ActionController(name: '_CarrinhoBase');

  @override
  dynamic getList() {
    final _$actionInfo = _$_CarrinhoBaseActionController.startAction();
    try {
      return super.getList();
    } finally {
      _$_CarrinhoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getFormaPagto() {
    final _$actionInfo = _$_CarrinhoBaseActionController.startAction();
    try {
      return super.getFormaPagto();
    } finally {
      _$_CarrinhoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEndereco(EnderecoModel _endereco) {
    final _$actionInfo = _$_CarrinhoBaseActionController.startAction();
    try {
      return super.setEndereco(_endereco);
    } finally {
      _$_CarrinhoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFormaPagto(FormaPagtoModel _formaPagto) {
    final _$actionInfo = _$_CarrinhoBaseActionController.startAction();
    try {
      return super.setFormaPagto(_formaPagto);
    } finally {
      _$_CarrinhoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'listaCarrinho: ${listaCarrinho.toString()},listaFormaPagto: ${listaFormaPagto.toString()},selectedEndereco: ${selectedEndereco.toString()},selectedFormaPagto: ${selectedFormaPagto.toString()},subtotal: ${subtotal.toString()}';
    return '{$string}';
  }
}
