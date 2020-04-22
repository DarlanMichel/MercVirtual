import 'package:mercadovirtual/app/modules/home/models/promocao_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/promocao_repository.dart';
import 'package:mobx/mobx.dart';

part 'promocao_screen_controller.g.dart';

class PromocaoScreenController = _PromocaoScreenBase with _$PromocaoScreenController;

abstract class _PromocaoScreenBase with Store {
  final PromocaoRepository _repository;

  _PromocaoScreenBase(this._repository){
    _repository.getPromocao().then((data)=> listaPromocao = data);
    //listaPromocao = ObservableStream(_repository.getPromocao());
  }

  @observable
  List<PromocaoModel> listaPromocao = [];
  //ObservableStream<List<PromocaoModel>> listaPromocao;

}
