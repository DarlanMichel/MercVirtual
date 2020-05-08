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

  final _$emailErrorAtom = Atom(name: '_CadastroControllerBase.emailError');

  @override
  String get emailError {
    _$emailErrorAtom.context.enforceReadPolicy(_$emailErrorAtom);
    _$emailErrorAtom.reportObserved();
    return super.emailError;
  }

  @override
  set emailError(String value) {
    _$emailErrorAtom.context.conditionallyRunInAction(() {
      super.emailError = value;
      _$emailErrorAtom.reportChanged();
    }, _$emailErrorAtom, name: '${_$emailErrorAtom.name}_set');
  }

  final _$senhaErrorAtom = Atom(name: '_CadastroControllerBase.senhaError');

  @override
  String get senhaError {
    _$senhaErrorAtom.context.enforceReadPolicy(_$senhaErrorAtom);
    _$senhaErrorAtom.reportObserved();
    return super.senhaError;
  }

  @override
  set senhaError(String value) {
    _$senhaErrorAtom.context.conditionallyRunInAction(() {
      super.senhaError = value;
      _$senhaErrorAtom.reportChanged();
    }, _$senhaErrorAtom, name: '${_$senhaErrorAtom.name}_set');
  }

  final _$criarContaAsyncAction = AsyncAction('criarConta');

  @override
  Future<bool> criarConta() {
    return _$criarContaAsyncAction.run(() => super.criarConta());
  }

  final _$_CadastroControllerBaseActionController =
      ActionController(name: '_CadastroControllerBase');

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
  String toString() {
    final string =
        'email: ${email.toString()},senha: ${senha.toString()},confirmaSenha: ${confirmaSenha.toString()},emailError: ${emailError.toString()},senhaError: ${senhaError.toString()}';
    return '{$string}';
  }
}
