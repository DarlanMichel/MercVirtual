import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mercadovirtual/app/modules/login/store/login_store_controller.dart';
import 'package:mercadovirtual/app/modules/shared/custom_hasura_connect.dart';
import 'package:mercadovirtual/app/modules/splash/splash_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  @action
  void setEmail(String _email) => email = _email;

  @action
  void setSenha(String _senha) => senha = _senha;

  Future insert(String nome, String email, String id) =>
      _repository.insert(nome, email, id);

  @observable
  bool loading = false;

  @action
  void setLoading(bool _loading) => loading = _loading;

  @observable
  String usuario;

  @observable
  String nome;

  @action
  Future<bool> login() async {
    setLoading(true);
    await googleSignIn.signOut();
    HasuraService().removeToken();
    try {
      final FirebaseUser user = (await _auth.signInWithEmailAndPassword(
        email: email,
        password: senha,
      )).user;

      store.setToken((await user.getIdToken()).token);
      //HasuraService().connection;

    } catch (e) {
      Modular.to.showDialog(builder: (context) {
        return AlertDialog(
          content: Text("E-mail ou senha inválida!"),
        );
      });
    }
    setLoading(false);
  }

  Future<bool> signInWithGoogle() async {
    setLoading(true);
    HasuraService().removeToken();
    try {
      final GoogleSignInAccount googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final AuthResult authResult =
          await _auth.signInWithCredential(credential);
      final FirebaseUser user = authResult.user;

      store.setToken((await user.getIdToken()).token);
      //HasuraService().connection;

      email = user.email;
      usuario = user.uid;
      nome = user.displayName;

    } catch (e) {
      Modular.to.showDialog(builder: (context) {
        return AlertDialog(
          content: Text("Não foi possivel conectar! Tente Novamente!"),
        );
      });
    }

    setLoading(false);
  }

//  Future<bool> signInWithFacebook() async {
//    setLoading(true);
//
//    try{
//      final LoginResult result = await FacebookAuth.instance.login();
//      final AuthCredential credential = FacebookAuthProvider.getCredential(
//        accessToken: result.accessToken.token,
//      );
//      final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
//
//      var result = await FacebookLogin().logIn(['email', 'public_profile']);
//      switch (result.status) {
//        case FacebookLoginStatus.loggedIn:
//          final credential = FacebookAuthProvider.getCredential(
//              accessToken: result.accessToken.token
//          );
//
//          final authResult = await _auth.signInWithCredential(credential);
//
//          final FirebaseUser user = authResult.user;
//          store.setToken((await user.getIdToken()).token);
//
//          email = user.email;
//          usuario = user.uid;
//          nome = user.displayName;
//
//          break;
//        case FacebookLoginStatus.cancelledByUser:
//          print("Facebook login cancelled");
//          break;
//        case FacebookLoginStatus.error:
//          print(result.errorMessage);
//          break;
//      }
//
//    }catch (e) {
//      Modular.to.showDialog(builder: (context) {
//        return AlertDialog(
//          content: Text("Não foi possivel conectar! Tente Novamente!"),
//        );
//      });
//    }
//
//    setLoading(false);
//  }
}
