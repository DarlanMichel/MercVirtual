import 'package:mercadovirtual/app/modules/home/models/promocao_model.dart';

abstract class IPromocaoRepository{
  Stream<List<PromocaoModel>> getPromocao();
}