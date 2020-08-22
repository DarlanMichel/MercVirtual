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

  final _$codDescontoAtom = Atom(name: '_CarrinhoBase.codDesconto');

  @override
  String get codDesconto {
    _$codDescontoAtom.context.enforceReadPolicy(_$codDescontoAtom);
    _$codDescontoAtom.reportObserved();
    return super.codDesconto;
  }

  @override
  set codDesconto(String value) {
    _$codDescontoAtom.context.conditionallyRunInAction(() {
      super.codDesconto = value;
      _$codDescontoAtom.reportChanged();
    }, _$codDescontoAtom, name: '${_$codDescontoAtom.name}_set');
  }

  final _$descontoAtom = Atom(name: '_CarrinhoBase.desconto');

  @override
  int get desconto {
    _$descontoAtom.context.enforceReadPolicy(_$descontoAtom);
    _$descontoAtom.reportObserved();
    return super.desconto;
  }

  @override
  set desconto(int value) {
    _$descontoAtom.context.conditionallyRunInAction(() {
      super.desconto = value;
      _$descontoAtom.reportChanged();
    }, _$descontoAtom, name: '${_$descontoAtom.name}_set');
  }

  final _$getDescontoAsyncAction = AsyncAction('getDesconto');

  @override
  Future<int> getDesconto() {
    return _$getDescontoAsyncAction.run(() => super.getDesconto());
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
  void setDesconto(String _codDesconto) {
    final _$actionInfo = _$_CarrinhoBaseActionController.startAction();
    try {
      return super.setDesconto(_codDesconto);
    } finally {
      _$_CarrinhoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'listaCarrinho: ${listaCarrinho.toString()},selectedEndereco: ${selectedEndereco.toString()},selectedFormaPagto: ${selectedFormaPagto.toString()},codDesconto: ${codDesconto.toString()},desconto: ${desconto.toString()},subtotal: ${subtotal.toString()}';
    return '{$string}';
  }
}
