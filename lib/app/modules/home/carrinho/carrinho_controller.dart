import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';
import 'package:mercadovirtual/app/modules/home/models/endereco_model.dart';
import 'package:mercadovirtual/app/modules/home/models/formaPagto_model.dart';
import 'package:mercadovirtual/app/modules/home/models/perfil_model.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_controller.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository_interface.dart';
import 'package:mercadovirtual/app/modules/home/repositories/desconto_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_controller.g.dart';

class CarrinhoController = _CarrinhoBase with _$CarrinhoController;

abstract class _CarrinhoBase with Store {
  final ICarrinhoRepository _repository;
  final IDescontoRepository _descontoRepository;

  @observable
  ObservableStream<List<CarrinhoModel>> listaCarrinho;

  _CarrinhoBase(ICarrinhoRepository this._repository, this._descontoRepository){
    getList();
  }

  @action
  getList(){
    listaCarrinho = _repository.getCarrinho().asObservable();
  }

  Future save(int idProduto, int qtd) =>  _repository.save(idProduto, qtd);

  Future delete(CarrinhoModel model) => _repository.delete(model);

  Future update(CarrinhoModel model) => _repository.update(model);

  @computed
  double get subtotal => listaCarrinho.value.map((item) => ((item.produto.novopreco != null && item.produto.datafim.isAfter(DateTime.now())) ? item.produto.novopreco : item.produto.preco) * item.qtd).reduce((value, element) => value + element);

  @observable
  EnderecoModel selectedEndereco;

  @action
  void setEndereco(EnderecoModel _endereco) => selectedEndereco = _endereco;

  @observable
  FormaPagtoModel selectedFormaPagto;

  @action
  void setFormaPagto(FormaPagtoModel _formaPagto) => selectedFormaPagto = _formaPagto;

  @observable
  String codDesconto = '';

  @action
  void setDesconto(String _codDesconto) => codDesconto = _codDesconto;

  @observable
  int desconto = 0;

  @action
  Future<int> getDesconto() async{
    desconto = await _descontoRepository.getDesconto(codDesconto, DateFormat('yyyy-MM-dd').format(DateTime.now()));
  }

  @action
  Future saveCupom() async{
    if(codDesconto != ''){
      await _descontoRepository.save(codDesconto);
    }else{
      return null;
    }
  }

}
