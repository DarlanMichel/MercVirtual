const String enderecoQuery = ''' 
                subscription getEnderecos {
                    enderecos {
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