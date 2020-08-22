import 'package:mercadovirtual/app/modules/home/models/pedido_model.dart';

abstract class IPedidoRepository {
  Stream<List<PedidoModel>> getPedido();

  Future save(int formaPagto, int idEnd, double valorTotal);

}