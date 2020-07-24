// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_endereco_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroEnderecoController on _CadastroEnderecoControllerBase, Store {
  Computed<EnderecoModel> _$modelComputed;

  @override
  EnderecoModel get model =>
      (_$modelComputed ??= Computed<EnderecoModel>(() => super.model)).value;

  final _$cepAtom = Atom(name: '_CadastroEnderecoControllerBase.cep');

  @override
  String get cep {
    _$cepAtom.context.enforceReadPolicy(_$cepAtom);
    _$cepAtom.reportObserved();
    return super.cep;
  }

  @override
  set cep(String value) {
    _$cepAtom.context.conditionallyRunInAction(() {
      super.cep = value;
      _$cepAtom.reportChanged();
    }, _$cepAtom, name: '${_$cepAtom.name}_set');
  }

  final _$ruaAtom = Atom(name: '_CadastroEnderecoControllerBase.rua');

  @override
  String get rua {
    _$ruaAtom.context.enforceReadPolicy(_$ruaAtom);
    _$ruaAtom.reportObserved();
    return super.rua;
  }

  @override
  set rua(String value) {
    _$ruaAtom.context.conditionallyRunInAction(() {
      super.rua = value;
      _$ruaAtom.reportChanged();
    }, _$ruaAtom, name: '${_$ruaAtom.name}_set');
  }

  final _$numAtom = Atom(name: '_CadastroEnderecoControllerBase.num');

  @override
  String get num {
    _$numAtom.context.enforceReadPolicy(_$numAtom);
    _$numAtom.reportObserved();
    return super.num;
  }

  @override
  set num(String value) {
    _$numAtom.context.conditionallyRunInAction(() {
      super.num = value;
      _$numAtom.reportChanged();
    }, _$numAtom, name: '${_$numAtom.name}_set');
  }

  final _$complementoAtom =
      Atom(name: '_CadastroEnderecoControllerBase.complemento');

  @override
  String get complemento {
    _$complementoAtom.context.enforceReadPolicy(_$complementoAtom);
    _$complementoAtom.reportObserved();
    return super.complemento;
  }

  @override
  set complemento(String value) {
    _$complementoAtom.context.conditionallyRunInAction(() {
      super.complemento = value;
      _$complementoAtom.reportChanged();
    }, _$complementoAtom, name: '${_$complementoAtom.name}_set');
  }

  final _$bairroAtom = Atom(name: '_CadastroEnderecoControllerBase.bairro');

  @override
  String get bairro {
    _$bairroAtom.context.enforceReadPolicy(_$bairroAtom);
    _$bairroAtom.reportObserved();
    return super.bairro;
  }

  @override
  set bairro(String value) {
    _$bairroAtom.context.conditionallyRunInAction(() {
      super.bairro = value;
      _$bairroAtom.reportChanged();
    }, _$bairroAtom, name: '${_$bairroAtom.name}_set');
  }

  final _$referenciaAtom =
      Atom(name: '_CadastroEnderecoControllerBase.referencia');

  @override
  String get referencia {
    _$referenciaAtom.context.enforceReadPolicy(_$referenciaAtom);
    _$referenciaAtom.reportObserved();
    return super.referencia;
  }

  @override
  set referencia(String value) {
    _$referenciaAtom.context.conditionallyRunInAction(() {
      super.referencia = value;
      _$referenciaAtom.reportChanged();
    }, _$referenciaAtom, name: '${_$referenciaAtom.name}_set');
  }

  final _$cidadeAtom = Atom(name: '_CadastroEnderecoControllerBase.cidade');

  @override
  String get cidade {
    _$cidadeAtom.context.enforceReadPolicy(_$cidadeAtom);
    _$cidadeAtom.reportObserved();
    return super.cidade;
  }

  @override
  set cidade(String value) {
    _$cidadeAtom.context.conditionallyRunInAction(() {
      super.cidade = value;
      _$cidadeAtom.reportChanged();
    }, _$cidadeAtom, name: '${_$cidadeAtom.name}_set');
  }

  final _$ufAtom = Atom(name: '_CadastroEnderecoControllerBase.uf');

  @override
  String get uf {
    _$ufAtom.context.enforceReadPolicy(_$ufAtom);
    _$ufAtom.reportObserved();
    return super.uf;
  }

  @override
  set uf(String value) {
    _$ufAtom.context.conditionallyRunInAction(() {
      super.uf = value;
      _$ufAtom.reportChanged();
    }, _$ufAtom, name: '${_$ufAtom.name}_set');
  }

  final _$descricaoAtom =
      Atom(name: '_CadastroEnderecoControllerBase.descricao');

  @override
  String get descricao {
    _$descricaoAtom.context.enforceReadPolicy(_$descricaoAtom);
    _$descricaoAtom.reportObserved();
    return super.descricao;
  }

  @override
  set descricao(String value) {
    _$descricaoAtom.context.conditionallyRunInAction(() {
      super.descricao = value;
      _$descricaoAtom.reportChanged();
    }, _$descricaoAtom, name: '${_$descricaoAtom.name}_set');
  }

  final _$_CadastroEnderecoControllerBaseActionController =
      ActionController(name: '_CadastroEnderecoControllerBase');

  @override
  void setCEP(String _cep) {
    final _$actionInfo =
        _$_CadastroEnderecoControllerBaseActionController.startAction();
    try {
      return super.setCEP(_cep);
    } finally {
      _$_CadastroEnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRua(String _rua) {
    final _$actionInfo =
        _$_CadastroEnderecoControllerBaseActionController.startAction();
    try {
      return super.setRua(_rua);
    } finally {
      _$_CadastroEnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNum(String _num) {
    final _$actionInfo =
        _$_CadastroEnderecoControllerBaseActionController.startAction();
    try {
      return super.setNum(_num);
    } finally {
      _$_CadastroEnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComplemento(String _complemento) {
    final _$actionInfo =
        _$_CadastroEnderecoControllerBaseActionController.startAction();
    try {
      return super.setComplemento(_complemento);
    } finally {
      _$_CadastroEnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBairro(String _bairro) {
    final _$actionInfo =
        _$_CadastroEnderecoControllerBaseActionController.startAction();
    try {
      return super.setBairro(_bairro);
    } finally {
      _$_CadastroEnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setReferencia(String _referencia) {
    final _$actionInfo =
        _$_CadastroEnderecoControllerBaseActionController.startAction();
    try {
      return super.setReferencia(_referencia);
    } finally {
      _$_CadastroEnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCidade(String _cidade) {
    final _$actionInfo =
        _$_CadastroEnderecoControllerBaseActionController.startAction();
    try {
      return super.setCidade(_cidade);
    } finally {
      _$_CadastroEnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUF(String _uf) {
    final _$actionInfo =
        _$_CadastroEnderecoControllerBaseActionController.startAction();
    try {
      return super.setUF(_uf);
    } finally {
      _$_CadastroEnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescricao(String _descricao) {
    final _$actionInfo =
        _$_CadastroEnderecoControllerBaseActionController.startAction();
    try {
      return super.setDescricao(_descricao);
    } finally {
      _$_CadastroEnderecoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'cep: ${cep.toString()},rua: ${rua.toString()},num: ${num.toString()},complemento: ${complemento.toString()},bairro: ${bairro.toString()},referencia: ${referencia.toString()},cidade: ${cidade.toString()},uf: ${uf.toString()},descricao: ${descricao.toString()},model: ${model.toString()}';
    return '{$string}';
  }
}
