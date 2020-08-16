const String pedidoQuery = '''
                subscription getPedido {
                          pedido {
                            id
                            status
                            valor_total
                            carrinhos {
                              qtd
                              produto {
                                descricao
                                preco
                              }
                            }    
                          }
                        } ''';