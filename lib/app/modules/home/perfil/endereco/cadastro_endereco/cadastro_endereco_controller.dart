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


  Future save(String bairro, String cep, String cidade, String complemento, String descricao, String estado, String numero, String referencia, String rua) =>
      _repository.save(bairro, cep, cidade, complemento, descricao, estado, numero, referencia, rua);

  Future update(EnderecoModel model) => _repository.update(model);

  @observable
  String cep = '';

  @action
  Future setCEP(String _cep) async{
    cep = _cep;
    if(cep.length == 8) {
      var CEP = new via_cep();

      await CEP.searchCEP(cep, 'json', '');

      // Sucesso
      if (CEP.getResponse() == 200) {
        setRua(CEP.getLogradouro());
        print('Logradouro: ' +rua);
        setBairro(CEP.getBairro());
        print('Bairro: '+bairro);
        setCidade(CEP.getLocalidade());
        print('Localidade: '+cidade);
        setUF(CEP.getUF());
        print('UF: '+uf);
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

}
