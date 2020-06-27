import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/login/store/login_store_controller.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final LoginStoreController store;
  _LoginControllerBase(this.store);

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @observable
  String email = '';

  @observable
  String senha = '';

  @observable
  String emailError;

  @observable
  String senhaError;



  @action
  void setEmail(String _email) => email = _email;

  @action
  void setSenha(String _senha) => senha = _senha;

  @action
  Future<bool> login() async {
    email = email.trim();
    senha = senha.trim();

    var valid = true;

    if (email == null || !email.contains("@")) {
      emailError = "Email invalido !!!";
      valid = false;
    } else {
      emailError = null;
    }

    if (senha == null || senha.length == 0) {
      senhaError = "Senha invalida !!!";
      valid = false;
    } else {
      senhaError = null;
    }

    if (!valid) {
      return false;
    }

    try {
      final FirebaseUser user = (await _auth.signInWithEmailAndPassword(
        email: email,
        password: senha,
      )).user;
      store.setToken((await user.getIdToken()).token);
      var tokenId = await user.getIdToken();
      valid = tokenId != null;
      print(IdTokenResult);
      Modular.to.pushReplacementNamed("/Home");
    }catch (e){
      Modular.to.showDialog(builder: (context){
        return AlertDialog (
          content: Text("E-mail ou senha inválida!"),
        );
      });
    }
    return valid;
  }
}
