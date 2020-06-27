import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_carrinho_model.dart';

class UpdateCarrinhoRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  UpdateCarrinhoRepository(this._hasuraConnect);

  Future<List<ProdutoCarrinhoModel>> getProdutoCarrinho(int idProduto) async {
    var query = '''
           query getProdutoCarrinho(\$produto: Int) {
            carrinho(where: {id_produto: {_eq: \$produto}, status: {_eq: "A"}}) {
              qtd
            }
          }
      ''';

    var snapshot = await _hasuraConnect.query(query, variables: {"produto": idProduto});

    return ProdutoCarrinhoModel.fromJsonList(snapshot["data"]["carrinho"] as List);
  }

  Future<bool> updateCarrinho(int produto, int qtd) async {
    var mutation = ''' 
                  mutation UpdateCarrinho(\$produto: Int, \$qtd: Int) {
                    update_carrinho(where: {id_produto: {_eq: \$produto}, status: {_eq: "A"}}, _inc: {qtd: \$qtd}) {
                      affected_rows
                    }
                  }
              ''';

    var snapshot = await _hasuraConnect.mutation(mutation, variables: {
      "produto": produto,
      "qtd": qtd
    });

    return snapshot["data"]["update_carrinho"]["affected_rows"] > 0;

  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
