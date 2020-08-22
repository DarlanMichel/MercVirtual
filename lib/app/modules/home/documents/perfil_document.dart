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

const String insertClienteQuery = '''
                  mutation insertCliente(\$email: String!, \$nome: String!, \$id: String!) {
                    insert_cliente(objects: {email: \$email, nome: \$nome, id: \$id}, on_conflict: {constraint: cliente_pkey, update_columns: email}) {
                      affected_rows
                    }
                  }''';