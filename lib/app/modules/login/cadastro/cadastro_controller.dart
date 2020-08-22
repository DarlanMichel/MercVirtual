import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mercadovirtual/app/modules/login/store/login_store_controller.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_controller.g.dart';

class CadastroController = _CadastroControllerBase with _$CadastroController;

abstract class _CadastroControllerBase with Store{
  final PerfilRepository _repository;
  final LoginStoreController store;

  _CadastroControllerBase(this._repository, this.store);

  Future insert(String nome, String email, String id) => _repository.insert(nome, email, id);

  @observable
  String email = '';

  @observable
  String nome = '';

  @observable
  String senha = '';

  @observable
  String confirmaSenha = '';

  @action
  void setNome(String _nome) => nome = _nome;

  @action
  void setEmail(String _email) => email = _email;

  @action
  void setSenha(String _senha) => senha = _senha;

  @action
  void setConfirmaSenha(String _confirmaSenha) => confirmaSenha = _confirmaSenha;

  bool emailValid(String email){
    final RegExp regex = RegExp(
        r"^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$");
    return regex.hasMatch(email);
  }

  @observable
  bool valid = false;

  @action
  void setvalid(bool _value) => valid = _value;

  @observable
  String usuario;

  @action
  Future<void> criarConta() async {
    setvalid(true);

    try{
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
        email: email,
        password: senha,
      )).user;

      usuario = user.uid;

      store.setToken((await user.getIdToken()).token);
      //var tokenId = await user.getIdToken();
      //valid = tokenId != null;

    }catch (e){
      Modular.to.showDialog(builder: (context){
        return AlertDialog (
          content: Text("Erro de Conexão"),
        );
      });
    }

    setvalid(true);

  }
}
