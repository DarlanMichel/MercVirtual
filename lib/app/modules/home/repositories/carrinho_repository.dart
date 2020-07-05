import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/documents/carrinho_document.dart';
import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';
import 'package:mercadovirtual/app/modules/home/repositories/carrinho_repository_interface.dart';

class CarrinhoRepository implements ICarrinhoRepository{
  final HasuraConnect _hasuraConnect;

  CarrinhoRepository(this._hasuraConnect);

  @override
  Stream<List<CarrinhoModel>> getCarrinho(){
    return _hasuraConnect.subscription(carrinhoQuery).map((event) {
      return (event["data"]["carrinho"] as List).map((json) {
        return CarrinhoModel.fromJson(json);
      }).toList();
    });
  }

  @override
  Future save(int produto, int qtd) async {
    var quantidade;
    await getProdutoCarrinho(produto).then((data) {
      quantidade = data.length;
      print(quantidade);
    });

    if(quantidade == 0){
      var data = await _hasuraConnect.mutation(carrinhoInsertQuery, variables: {
        "produto": produto,
        "qtd": qtd
      });
      return data["data"]["insert_carrinho"]["affected_rows"] > 0;
    }else{
      var data = await _hasuraConnect.mutation(carrinhoIncQuery, variables: {
        "produto": produto,
        "qtd": qtd
      });
      return data["data"]["update_carrinho"]["affected_rows"] > 0;
    }
  }

  @override
  Future delete(CarrinhoModel model) {
    return _hasuraConnect.mutation(carrinhoDeleteQuery, variables: {
      "produto": model.idProduto,
    });
  }

  @override
  Future update(CarrinhoModel model) {
    return _hasuraConnect.mutation(carrinhoUpdateQuery, variables: {
      "produto": model.idProduto,
      "qtd": model.qtd
    });
  }

  @override
  void dispose() {}

  @override
  Future<List<Carrinho>> getProdutoCarrinho(int idProduto) {
    return _hasuraConnect.query(getProdutoCarrinhoQuery, variables: {"produto": idProduto}).then((event) {
      return (event["data"]["carrinho"] as List).map((json) {
        return Carrinho.fromJson(json);
      }).toList();
    });
  }
}