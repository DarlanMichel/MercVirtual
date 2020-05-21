import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';

class AddProdutoCarrinhoRepository extends Disposable{
  final HasuraConnect _hasuraConnect;

  AddProdutoCarrinhoRepository(this._hasuraConnect);

  bool isValid = true;

  Future<bool> addProdutoCarrinho(int produto, int qtd) async {
    var mutation = ''' 
                  mutation addProdutoCarrinho(\$produto:Int, \$qtd:float8) {
                    insert_carrinho(objects: {id_produto: \$produto, qtd: \$qtd, status: "A"}) {
                      affected_rows
                    }
                  }
              ''';

    var snapshot = await _hasuraConnect.mutation(mutation, variables: {
      "produto": produto,
      "qtd": qtd
    });

    return snapshot["data"]["insert_carrinho"]["affected_rows"] > 0;
  }

  @override
  void dispose() {}
}