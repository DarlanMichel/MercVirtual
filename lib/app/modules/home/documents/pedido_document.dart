const String pedidoQuery = '''
                subscription getPedido {
                          pedido(order_by: {created_at: desc}) {
                            id
                            status
                            valor_total
                            id_carrinho
                            carrinhos {
                              qtd
                              produto {
                                descricao
                                preco
                              }
                            }    
                          }
                        } ''';

const String selectMaxQuery = '''
                  query selectMax {
                    pedido(limit: 1, order_by: {id_carrinho: desc}) {
                      id_carrinho
                    }
                  } ''';

const String insertPedidoQuery = '''
                  mutation updateFinaliza(\$idPedido: Int!, \$formaPagto: Int!, \$idEnd: Int!, \$valorTotal: numeric!) {
                      insert_pedido(objects: {id_carrinho: \$idPedido, id_endereco: \$idEnd, status: 1, valor_total: \$valorTotal, forma_pagto: \$formaPagto}) {
                        affected_rows
                      }
                      update_carrinho(where: {status: {_eq: "A"}}, _set: {status: "F", id_pedido: \$idPedido}) {
                        affected_rows
                      }
                    }''';