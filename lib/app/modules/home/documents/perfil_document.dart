const String nomeQuery = ''' 
                subscription getNome {
                  cliente {
                    id
                    nome
                    email
                  }
                } ''';

const String updateClienteQuery = ''' 
                mutation updateCliente(\$email: String, \$nome: String, \$id: String) {
                          update_cliente(where: {id: {_eq: \$id}}, _set: {email: \$email, nome: \$nome}) {
                            affected_rows
                          }
                        } ''';