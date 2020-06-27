import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

class DeleteProdutoCarrinhoRepository extends Disposable {
  final HasuraConnect _hasuraConnect;

  DeleteProdutoCarrinhoRepository(this._hasuraConnect);

  Future<bool> deleteCarrinho(int produto) async {
    var mutation = ''' 
                  mutation deleteCarrinho(\$produto: Int) {
                    delete_carrinho(where: {id_produto: {_eq: \$produto}}) {
                      affected_rows
                    }
                   }
              ''';

    var snapshot = await _hasuraConnect.mutation(mutation, variables: {
      "produto": produto,
    });

    return snapshot["data"]["delete_carrinho"]["affected_rows"] > 0;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
