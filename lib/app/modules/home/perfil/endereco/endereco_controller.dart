import 'package:mercadovirtual/app/modules/home/models/endereco_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'endereco_controller.g.dart';

class EnderecoController = _EnderecoControllerBase with _$EnderecoController;

abstract class _EnderecoControllerBase with Store {
  final IEnderecoRepository _repository;

  @observable
  ObservableStream<List<EnderecoModel>> listaEndereco;

  _EnderecoControllerBase(this._repository){
    getEndereco();
  }

  @action
  getEndereco(){
    listaEndereco = _repository.getEndereco().asObservable();
  }

  Future delete(EnderecoModel model) => _repository.delete(model);

}
