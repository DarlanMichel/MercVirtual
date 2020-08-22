import 'package:mercadovirtual/app/modules/home/models/formaPagto_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/formaPagto_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'pagamento_controller.g.dart';

class PagamentoController = _PagamentoControllerBase with _$PagamentoController;

abstract class _PagamentoControllerBase with Store {
  final IFormaPagtoRepository _formaPagtoRepository;

  @observable
  ObservableStream<List<FormaPagtoModel>> listaFormaPagto;

  _PagamentoControllerBase(this._formaPagtoRepository){
    getFormaPagto();
  }

  @action
  getFormaPagto(){
    listaFormaPagto = _formaPagtoRepository.getFormaPagto().asObservable();
  }
}
