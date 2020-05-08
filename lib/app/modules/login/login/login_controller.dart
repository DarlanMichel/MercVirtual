import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  String email = '';

  @observable
  String senha = '';

  @action
  void setEmail(String _email) => email = _email;

  @action
  void setSenha(String _senha) => senha = _senha;

  @action
  Future<bool> login() async {
    return true;
  }
}
