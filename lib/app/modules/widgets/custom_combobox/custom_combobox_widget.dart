import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';

class CustomComboboxWidget extends StatelessWidget {
  final List<Model> itens;
  final Function(Model) onChange;
  final Model itemSelecionado;
  final String text;
  final IconData icon;

  const CustomComboboxWidget({Key key, this.itens, this.onChange, this.itemSelecionado, this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FindDropdown<Model>(
          items: itens,
          onChanged: (Model item) => onChange(item),
          selectedItem: itemSelecionado,
          dropdownBuilder: (_, model){
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: model?.id == null ? ListTile(
                title: Text(
                  "Selecione ${text}",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                leading: Icon(
                    icon
                ),
                trailing: Icon(
                    Icons.keyboard_arrow_down
                ),
              ) : ListTile(
                title: Text(
                  model.descricao,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),
                ),
                leading: Icon(
                    icon
                ),
              )
            );
          },
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class Model {
  final int id;
  final String descricao;

  Model(this.id, this.descricao);

  @override
  String toString() => descricao.toString();

  @override
  operator ==(o) => o is Model && o.id == id;

  @override
  int get hashCode => id.hashCode ^ descricao.hashCode;
}
