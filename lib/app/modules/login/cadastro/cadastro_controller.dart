import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_controller.g.dart';

class CadastroController = _CadastroControllerBase with _$CadastroController;

abstract class _CadastroControllerBase with Store {
  @observable
  String email = '';

  @observable
  String senha = '';

  @observable
  String confirmaSenha = '';

  @observable
  String emailError;

  @observable
  String senhaError;

  @action
  void setEmail(String _email) => email = _email;

  @action
  void setSenha(String _senha) => senha = _senha;

  @action
  void setConfirmaSenha(String _confirmaSenha) => confirmaSenha = _confirmaSenha;

  @action
  Future<bool> criarConta() async {
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

    if (senha != confirmaSenha) {
      senhaError = "Senha de confirmacao nao bate com a senha informada!!!";
      valid = false;
    }


    if(!valid){
      return false;
    }

    final FirebaseAuth _auth = FirebaseAuth.instance;
    final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: email,
      password: senha,
    )).user;
    var tokenId = await user.getIdToken();
    valid = tokenId != null;

    return valid;

  }
}
