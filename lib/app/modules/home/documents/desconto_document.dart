const String descontoQuery = ''' 
                query getDesconto(\$codigo: String!, \$data: date!) {
                    cupomDesc(where: {codigo: {_eq: \$codigo}, validade: {_gte: \$data}, _not: {cupomUsados: {codigo: {_eq: \$codigo}}}}) {
                      codigo
                      desconto
                      validade
                    }
                  } ''';

const String cupomUsadoQuery = ''' 
                mutation cupomUsado(\$codigo: String!) {
                  insert_cupomUsados(objects: {codigo: \$codigo}) {
                    affected_rows
                  }
                }''';