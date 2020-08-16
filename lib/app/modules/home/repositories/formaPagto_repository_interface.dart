import 'package:mercadovirtual/app/modules/home/models/formaPagto_model.dart';

abstract class IFormaPagtoRepository{
  Stream<List<FormaPagtoModel>> getFormaPagto();
}