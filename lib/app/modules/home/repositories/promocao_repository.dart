import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/models/promocao_model.dart';

class PromocaoRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  PromocaoRepository(this._hasuraConnect);

  @override
//  Stream<List<PromocaoModel>> getPromocao(){
  Future<List<PromocaoModel>> getPromocao() async{
    var query = ''' 
                query getPromocao {
                    promocao {
                      datafim
                      novopreco
                      codprod
                      produto {
                        descricao
                        ean
                        preco
                      }
                    }
                  } ''';

    //var snapshot = _hasuraConnect.subscription(query);
    var data = await _hasuraConnect.query(query);

    //return snapshot.map((data)=> PromocaoModel.fromJsonList(data["data"]["promocao"]));
    return PromocaoModel.fromJsonList(data["data"]["promocao"] as List);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
