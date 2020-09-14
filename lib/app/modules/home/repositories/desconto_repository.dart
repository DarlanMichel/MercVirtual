import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/desconto_document.dart';
import 'package:mercadovirtual/app/modules/home/repositories/desconto_repository_interface.dart';

class DescontoRepository extends IDescontoRepository{
  final HasuraConnect _hasuraConnect;

  DescontoRepository(this._hasuraConnect);

  int desconto;

  @override
  Future<int> getDesconto(String codigo, String data) async {
    await _hasuraConnect.query(descontoQuery, variables: {
      "codigo": codigo,
      "data": data,
    }).then((event) {
      List recebe = event["data"]["cupomDesc"];

      if(recebe.length > 0){
        desconto = event["data"]["cupomDesc"][0]["desconto"];
      }
      else{
        desconto = 0;
      }
    });

    return desconto;
  }

  @override
  Future save(String codigo) {
    return _hasuraConnect.mutation(cupomUsadoQuery, variables: {
      "codigo": codigo
    });
  }

}