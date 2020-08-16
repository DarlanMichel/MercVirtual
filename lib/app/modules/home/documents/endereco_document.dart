const String enderecoQuery = ''' 
                subscription getEnderecos {
                    enderecos {
                      id_end
                      bairro
                      cep
                      cidade
                      complemento
                      descricao
                      estado
                      numero
                      referencia
                      rua
                    }
                  }''';

const String enderecoInsertQuery = '''
              mutation insertEndereco(\$bairro: String, 
                                      \$cep: String, 
                                      \$cidade: String, 
                                      \$complemento: String, 
                                      \$descricao: String, 
                                      \$estado: String, 
                                      \$numero: String, 
                                      \$referencia: String, 
                                      \$rua: String) {
                  insert_enderecos(objects: {bairro: \$bairro, 
                                            cep: \$cep, 
                                            cidade: \$cidade, 
                                            complemento: \$complemento, 
                                            descricao: \$descricao, 
                                            estado: \$estado, 
                                            numero: \$numero, 
                                            referencia: \$referencia, 
                                            rua: \$rua}) {
                    affected_rows
                  }
                }''';

const String enderecoDeleteQuery = ''' 
                  mutation deleteEndereco(\$id: Int) {
                    delete_enderecos(where: {id_end: {_eq: \$id}}) {
                      affected_rows
                    }
                  }
              ''';

const String enderecoUpdateQuery = ''' 
                  mutation updateEndereco(\$id: Int, 
                                          \$bairro: String, 
                                          \$cep: String, 
                                          \$cidade: String, 
                                          \$complemento: String, 
                                          \$descricao: String, 
                                          \$estado: String, 
                                          \$numero: String, 
                                          \$referencia: String, 
                                          \$rua: String) {
                    update_enderecos(where: {id_end: {_eq: \$id}}, 
                      _set: {bairro: \$bairro, 
                             cep: \$cep, 
                             cidade: \$cidade, 
                             complemento: \$complemento, 
                             descricao: \$descricao, 
                             estado: \$estado, 
                             numero: \$numero, 
                             referencia: \$referencia, 
                             rua:  \$rua}) {
                      affected_rows
                    }
                  }
                                ''';