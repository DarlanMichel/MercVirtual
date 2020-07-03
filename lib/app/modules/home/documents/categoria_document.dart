const String categoriaQuery = ''' 
                subscription getCategoria {
                  categoria(order_by: {desc: asc}) {
                    desc
                    cod_secao
                  }
                 } ''';