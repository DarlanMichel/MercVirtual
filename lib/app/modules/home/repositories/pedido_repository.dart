import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/pedido_document.dart';
import 'package:mercadovirtual/app/modules/home/models/pedido_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/pedido_repository_interface.dart';

class PedidoRepository implements IPedidoRepository{
  final HasuraConnect _hasuraConnect;

  PedidoRepository(this._hasuraConnect);

  @override
  Stream<List<PedidoModel>> getPedido() {
    return _hasuraConnect.subscription(pedidoQuery).map((event) {
      return (event["data"]["pedido"] as List).map((json) {
        return PedidoModel.fromJson(json);
      }).toList();
    });
  }

  @override
  Future save(PedidoModel model) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  void dispose() {}
}