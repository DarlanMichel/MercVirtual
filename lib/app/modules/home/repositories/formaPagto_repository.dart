import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/formaPagto_document.dart';
import 'package:mercadovirtual/app/modules/home/models/formaPagto_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/formaPagto_repository_interface.dart';

class FormaPagtoRepository implements IFormaPagtoRepository{
  final HasuraConnect _hasuraConnect;

  FormaPagtoRepository(this._hasuraConnect);

  @override
  Stream<List<FormaPagtoModel>> getFormaPagto() {
    return _hasuraConnect.subscription(formaPagtoQuery).map((event) {
      return (event["data"]["formaPagamento"] as List).map((json) {
        return FormaPagtoModel.fromJson(json);
      }).toList();
    });
  }}