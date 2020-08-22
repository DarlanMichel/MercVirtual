import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mercadovirtual/app/modules/login/store/login_store_controller.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final LoginStoreController store;
  final PerfilRepository _repository;

  _LoginControllerBase(this.store, this._repository);

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  @observable
  String email = '';

  @observable
  String senha = '';

  bool emailValid(String email){
    final RegExp regex = RegExp(
        r"^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$");
    return regex.hasMatch(email);
  }

  @action
  void setEmail(String _email) => email = _email;

  @action
  void setSenha(String _senha) => senha = _senha;

  Future insert(String nome, String email, String id) => _repository.insert(nome, email, id);

  @action
  Future<bool> login() async {
    var valid = true;

    try {
      final FirebaseUser user = (await _auth.signInWithEmailAndPassword(
        email: email,
        password: senha,
      )).user;

      store.setToken((await user.getIdToken()).token);
      var tokenId = await user.getIdToken();
      valid = tokenId != null;

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

  //Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
  //final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
  //final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    // Create a new credential
  //final GoogleAuthCredential credential = GoogleAuthProvider.credential(
  //accessToken: googleAuth.accessToken,
  //idToken: googleAuth.idToken,
  //);

    // Once signed in, return the UserCredential
//return await FirebaseAuth.instance.signInWithCredential(credential);
  //}



  Future<bool> signInWithGoogle() async {
    var valid = true;
      print("entrou na função");
      await Future.delayed(Duration(seconds: 1));
      final GoogleSignInAccount googleUser = await googleSignIn.signIn();

    print("passou pelo signin");
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      print("passou pelo autenticador");
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final AuthResult authResult = await _auth.signInWithCredential(credential);
      final FirebaseUser user = authResult.user;

      print(user);

      store.setToken((await user.getIdToken()).token);
      var tokenId = await user.getIdToken();
      valid = tokenId != null;
      print(tokenId.token);

      await insert(user.displayName, user.email, user.uid);


    return valid;
  }
}
