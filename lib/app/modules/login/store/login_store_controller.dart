import 'package:mobx/mobx.dart';

part 'login_store_controller.g.dart';

class LoginStoreController = _LoginStoreBase with _$LoginStoreController;

abstract class _LoginStoreBase with Store {
  @observable
  String token;

  @action
  setToken(value) => token = value;

  @computed
  bool get isLogged => token != null && token != "";
}
