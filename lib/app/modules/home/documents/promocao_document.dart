const String promocaoQuery = ''' 
                subscription getPromocao {
                    promocao {
                      datafim
                      novopreco
                      codprod
                      produto {
                        descricao
                        ean
                        preco
                      }
                    }
                  } ''';