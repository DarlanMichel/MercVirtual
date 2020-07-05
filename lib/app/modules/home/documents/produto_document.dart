const String produtoGetQuery = '''
                query getProdutos(\$desc: String!){
                  produtos(order_by: {descricao: asc}, where: {estoque: {_gt: "0"}, descricao: {_ilike: \$desc}}) {
                    descricao
                    preco
                    ean
                    categoria
                    codigo
                    estoque
                    unidade_medida
                  }
                 } ''';

const String produtoCategoriaQuery = ''' 
                query getProdutos(\$categoria: Int!, \$desc: String!) {
                    produtos(order_by: {descricao: asc}, where: {estoque: {_gt: "0"}, categoria: {_eq: \$categoria}, descricao: {_ilike: \$desc}}) {
                      descricao
                      preco
                      ean
                      categoria
                      codigo
                      estoque
                      unidade_medida
                    }
                  } ''';