import 'package:mercadovirtual/app/modules/home/models/perfil_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/perfil_repository.dart';
import 'package:mobx/mobx.dart';

part 'perfil_controller.g.dart';

class PerfilController = _PerfilBase with _$PerfilController;

abstract class _PerfilBase with Store {
  final PerfilRepository _repository;

  @observable
  ObservableStream<List<PerfilModel>> listaNome;

  _PerfilBase(this._repository){
    getNome();
  }

  @action
  getNome(){
    listaNome = _repository.getNome().asObservable();
  }
}
