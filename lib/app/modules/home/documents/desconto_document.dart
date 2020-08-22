const String descontoQuery = ''' 
                query getDesconto(\$codigo: String!, \$data: date!) {
                    cupomDesc(where: {codigo: {_eq: \$codigo}, validade: {_gte: \$data}}) {
                      codigo
                      desconto
                      validade
                    }
                  } ''';