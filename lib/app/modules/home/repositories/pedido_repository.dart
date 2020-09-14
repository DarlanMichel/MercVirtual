import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/pedido_document.dart';
import 'package:mercadovirtual/app/modules/home/models/pedido_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/pedido_repository_interface.dart';
import 'package:mobx/mobx.dart';

class PedidoRepository implements IPedidoRepository{
  final HasuraConnect _hasuraConnect;

  PedidoRepository(this._hasuraConnect);

  @override
  Stream<List<PedidoModel>> getPedido(String cliente) {
    return _hasuraConnect.subscription(pedidoQuery, variables: {
      "cliente": cliente
    }).map((event) {
      return (event["data"]["pedido"] as List).map((json) {
        return PedidoModel.fromJson(json);
      }).toList();
    });
  }

  @observable
  int _max;

  @override
  Future save(int formaPagto, int idEnd, double valorTotal) async{

    await _hasuraConnect.query(selectMaxQuery).then((event) {
        _max = event["data"]["pedido"][0]["id_carrinho"];
    });

    _max += 1;

    return _hasuraConnect.mutation(insertPedidoQuery, variables: {
      "formaPagto": formaPagto,
      "idPedido": _max,
      "idEnd": idEnd,
      "valorTotal": valorTotal
    });
  }

  @override
  void dispose() {}
}