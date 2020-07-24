import 'package:mercadovirtual/app/modules/home/models/endereco_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/endereco_repository_interface.dart';
import 'package:mobx/mobx.dart';
import 'package:via_cep/via_cep.dart';

part 'cadastro_endereco_controller.g.dart';

class CadastroEnderecoController = _CadastroEnderecoControllerBase
    with _$CadastroEnderecoController;

abstract class _CadastroEnderecoControllerBase with Store {
  final IEnderecoRepository _repository;

  _CadastroEnderecoControllerBase(this._repository);

  Future save(EnderecoModel model) =>  _repository.save(model);

  @observable
  String cep = '';

  @action
  void setCEP(String _cep) async{
    cep = _cep;
    if(cep.length == 8){
      var CEP = new via_cep();

      await CEP.searchCEP(cep, 'json', '');

      // Sucesso
      if (CEP.getResponse() == 200) {
        setRua(CEP.getLogradouro());
        print('Logradouro: '+CEP.getLogradouro());
        setComplemento(CEP.getComplemento());
        print('Complemento: '+CEP.getComplemento());
        setBairro(CEP.getBairro());
        print('Bairro: '+CEP.getBairro());
        setCidade(CEP.getLocalidade());
        print('Localidade: '+CEP.getLocalidade());
        setUF(CEP.getUF());
        print('UF: '+CEP.getUF());
        // Falha
      } else {
        print('Código de Retorno: '+CEP.getResponse().toString());
        print('Erro: '+CEP.getBody());
      }
    }
  }

  @observable
  String rua = '';

  @action
  void setRua(String _rua) => rua = _rua;

  @observable
  String num = '';

  @action
  void setNum(String _num) => num = _num;

  @observable
  String complemento = '';

  @action
  void setComplemento(String _complemento) => complemento = _complemento;

  @observable
  String bairro = '';

  @action
  void setBairro(String _bairro) => bairro = _bairro;

  @observable
  String referencia = '';

  @action
  void setReferencia(String _referencia) => referencia = _referencia;

  @observable
  String cidade = '';

  @action
  void setCidade(String _cidade) => cidade = _cidade;

  @observable
  String uf = '';

  @action
  void setUF(String _uf) => uf = _uf;

  @observable
  String descricao = '';

  @action
  void setDescricao(String _descricao) => descricao = _descricao;

  @computed
  EnderecoModel get model{
    model.cep = cep;
    model.rua = rua;
    model.numero = num;
    model.complemento = complemento;
    model.bairro = bairro;
    model.referencia = referencia;
    model.cidade = cidade;
    model.estado = uf;
    model.descricao = descricao;
  }

}
