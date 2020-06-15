import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/models/categoria_model.dart';

class CategoriaRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  CategoriaRepository(this._hasuraConnect);

  @override
  Stream<List<CategoriaModel>> getCategoria(){
    var query = ''' 
                subscription getCategoria {
                  categoria(order_by: {desc: asc}) {
                    desc
                    cod_secao
                  }
                 } ''';

    var snapshot = _hasuraConnect.subscription(query);

    return snapshot.map((data)=> CategoriaModel.fromJsonList(data["data"]["categoria"]));
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
