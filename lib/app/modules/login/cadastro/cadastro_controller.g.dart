// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroController on _CadastroControllerBase, Store {
  final _$emailAtom = Atom(name: '_CadastroControllerBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$nomeAtom = Atom(name: '_CadastroControllerBase.nome');

  @override
  String get nome {
    _$nomeAtom.context.enforceReadPolicy(_$nomeAtom);
    _$nomeAtom.reportObserved();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.context.conditionallyRunInAction(() {
      super.nome = value;
      _$nomeAtom.reportChanged();
    }, _$nomeAtom, name: '${_$nomeAtom.name}_set');
  }

  final _$senhaAtom = Atom(name: '_CadastroControllerBase.senha');

  @override
  String get senha {
    _$senhaAtom.context.enforceReadPolicy(_$senhaAtom);
    _$senhaAtom.reportObserved();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.context.conditionallyRunInAction(() {
      super.senha = value;
      _$senhaAtom.reportChanged();
    }, _$senhaAtom, name: '${_$senhaAtom.name}_set');
  }

  final _$confirmaSenhaAtom =
      Atom(name: '_CadastroControllerBase.confirmaSenha');

  @override
  String get confirmaSenha {
    _$confirmaSenhaAtom.context.enforceReadPolicy(_$confirmaSenhaAtom);
    _$confirmaSenhaAtom.reportObserved();
    return super.confirmaSenha;
  }

  @override
  set confirmaSenha(String value) {
    _$confirmaSenhaAtom.context.conditionallyRunInAction(() {
      super.confirmaSenha = value;
      _$confirmaSenhaAtom.reportChanged();
    }, _$confirmaSenhaAtom, name: '${_$confirmaSenhaAtom.name}_set');
  }

  final _$validAtom = Atom(name: '_CadastroControllerBase.valid');

  @override
  bool get valid {
    _$validAtom.context.enforceReadPolicy(_$validAtom);
    _$validAtom.reportObserved();
    return super.valid;
  }

  @override
  set valid(bool value) {
    _$validAtom.context.conditionallyRunInAction(() {
      super.valid = value;
      _$validAtom.reportChanged();
    }, _$validAtom, name: '${_$validAtom.name}_set');
  }

  final _$usuarioAtom = Atom(name: '_CadastroControllerBase.usuario');

  @override
  String get usuario {
    _$usuarioAtom.context.enforceReadPolicy(_$usuarioAtom);
    _$usuarioAtom.reportObserved();
    return super.usuario;
  }

  @override
  set usuario(String value) {
    _$usuarioAtom.context.conditionallyRunInAction(() {
      super.usuario = value;
      _$usuarioAtom.reportChanged();
    }, _$usuarioAtom, name: '${_$usuarioAtom.name}_set');
  }

  final _$criarContaAsyncAction = AsyncAction('criarConta');

  @override
  Future<void> criarConta() {
    return _$criarContaAsyncAction.run(() => super.criarConta());
  }

  final _$_CadastroControllerBaseActionController =
      ActionController(name: '_CadastroControllerBase');

  @override
  void setNome(String _nome) {
    final _$actionInfo =
        _$_CadastroControllerBaseActionController.startAction();
    try {
      return super.setNome(_nome);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String _email) {
    final _$actionInfo =
        _$_CadastroControllerBaseActionController.startAction();
    try {
      return super.setEmail(_email);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String _senha) {
    final _$actionInfo =
        _$_CadastroControllerBaseActionController.startAction();
    try {
      return super.setSenha(_senha);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmaSenha(String _confirmaSenha) {
    final _$actionInfo =
        _$_CadastroControllerBaseActionController.startAction();
    try {
      return super.setConfirmaSenha(_confirmaSenha);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setvalid(bool _value) {
    final _$actionInfo =
        _$_CadastroControllerBaseActionController.startAction();
    try {
      return super.setvalid(_value);
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'email: ${email.toString()},nome: ${nome.toString()},senha: ${senha.toString()},confirmaSenha: ${confirmaSenha.toString()},valid: ${valid.toString()},usuario: ${usuario.toString()}';
    return '{$string}';
  }
}
