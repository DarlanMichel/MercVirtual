import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/home/documents/popup_endereco.dart';
import 'package:mercadovirtual/app/modules/home/models/endereco_model.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/cadastro_endereco/cadastro_endereco_page.dart';
import 'package:mercadovirtual/app/modules/widgets/dialog_excluir_end/dialog_excluir_end_widget.dart';

class CardEnderecoWidget extends StatelessWidget {
  final EnderecoModel model;
  final BuildContext context;

  const CardEnderecoWidget({Key key, this.model, this.context}) : super(key: key);

  void _selected (String choice){
    if (choice == PopupEndereco.excluir){
      showDialog(
         context: context,
          builder: (BuildContext context){
            return DialogExcluirEndWidget(model: model,);
          }
      );
    }
    else if (choice == PopupEndereco.editar){
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => CadastroEnderecoPage(model: model,)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: Theme.of(context).accentColor,
          width: 2
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: Icon(
              Icons.home,
              color: Theme.of(context).accentColor,
              size: 45,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "${model.descricao}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                    ),
                    PopupMenuButton<String>(
                      onSelected: _selected,
                      itemBuilder: (BuildContext context){
                        return PopupEndereco.choices.map((String choice){
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(choice),
                          );
                        }).toList();
                      },
                    ),
                  ],
                ),
                Text(
                  "${model.rua}, ${model.numero} - ${model.bairro},",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  "${model.cidade} - ${model.estado}",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  "${model.complemento} - ${model.referencia}",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
