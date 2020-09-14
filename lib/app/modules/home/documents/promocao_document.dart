const String promocaoQuery = ''' 
                subscription getPromocao(\$data: date!) {
                    produtos(where: {datafim: {_gte: \$data}, dataini: {_lte: \$data}}) {
                      codigo
                      descricao
                      datafim
                      dataini
                      novopreco
                      ean
                      preco
                      categoria
                      estoque
                      unidade_medida
                    }
                  }
                  ''';