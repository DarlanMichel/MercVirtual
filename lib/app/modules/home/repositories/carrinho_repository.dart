import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';

class CarrinhoRepository extends Disposable{
  final HasuraConnect _hasuraConnect;

  CarrinhoRepository(this._hasuraConnect);

  @override
  Stream<List<CarrinhoModel>> getCarrinho(){
    var query = ''' 
                subscription getCarrinho {
                  carrinho(where: {status: {_eq: "A"}}) {
                    id_produto
                    qtd
                    produto {
                      descricao
                      ean
                      preco
                    }
                  }
                 } ''';

    var snapshot = _hasuraConnect.subscription(query);

    return snapshot.map((data)=> CarrinhoModel.fromJsonList(data["data"]["carrinho"]));
  }
  //dispose will be called automatically
  @override
  void dispose() {}
}