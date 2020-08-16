import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_perfil_controller.g.dart';

class CadastroPerfilController = _CadastroPerfilControllerBase
    with _$CadastroPerfilController;

abstract class _CadastroPerfilControllerBase with Store {
  final PerfilRepository _repository;

  _CadastroPerfilControllerBase(this._repository);

  Future save(String nome, String email, String id) => _repository.save(nome, email, id);

  @observable
  String nome = '';

  @action
  void setNome(String _nome) => nome = _nome;

  @observable
  String email = '';

  @action
  void setEmail(String _email) => email = _email;
}
