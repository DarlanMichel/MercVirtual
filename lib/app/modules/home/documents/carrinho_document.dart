const String carrinhoQuery = '''
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

const String carrinhoInsertQuery = ''' 
                  mutation addProdutoCarrinho(\$produto:Int, \$qtd:Int) {
                    insert_carrinho(objects: {id_produto: \$produto, qtd: \$qtd, status: "A"}) {
                      affected_rows
                    }
                  }
              ''';

const String carrinhoIncQuery = ''' 
                  mutation UpdateCarrinho(\$produto: Int, \$qtd: Int) {
                    update_carrinho(where: {id_produto: {_eq: \$produto}, status: {_eq: "A"}}, _inc: {qtd: \$qtd}) {
                      affected_rows
                    }
                  }
              ''';

const String carrinhoUpdateQuery = ''' 
                  mutation decrementCarrinho(\$produto: Int, \$qtd: Int) {
                    update_carrinho(where: {id_produto: {_eq: \$produto}, status: {_eq: "A"}}, _set: {qtd: \$qtd}) {
                      affected_rows
                    }
                  }
              ''';

const String carrinhoDeleteQuery = ''' 
                  mutation deleteCarrinho(\$produto: Int) {
                    delete_carrinho(where: {id_produto: {_eq: \$produto}}) {
                      affected_rows
                    }
                   }
              ''';

const String getProdutoCarrinhoQuery = '''
           query getProdutoCarrinho(\$produto: Int) {
            carrinho(where: {id_produto: {_eq: \$produto}, status: {_eq: "A"}}) {
              qtd
            }
          }
      ''';