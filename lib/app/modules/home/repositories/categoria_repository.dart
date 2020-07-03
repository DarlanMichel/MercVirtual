import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/categoria_document.dart';
import 'package:mercadovirtual/app/modules/home/models/categoria_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/categoria_repository_interface.dart';

class CategoriaRepository implements ICategoriaRepository {
  final HasuraConnect _hasuraConnect;

  CategoriaRepository(this._hasuraConnect);

  @override
  Stream<List<CategoriaModel>> getCategoria(){
    return _hasuraConnect.subscription(categoriaQuery).map((event) {
      return (event["data"]["categoria"] as List).map((json) {
        return CategoriaModel.fromJson(json);
      }).toList();
    });
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
