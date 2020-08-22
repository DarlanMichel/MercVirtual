import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_widget.dart';

class DiscountCardWidget extends StatelessWidget {
  final Function change;

  const DiscountCardWidget({Key key, this.change}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ExpansionTile(
        title: Text(
          "Cupom de Desconto",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).accentColor,
            fontSize: 14,
          ),
        ),
        leading: Icon(
          Icons.card_giftcard
        ),
        trailing: Icon(
          Icons.add
        ),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).accentColor,
                        width: 1
                    )
                ),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).accentColor,
                        width: 1
                    )
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).accentColor,
                        width: 1
                    )
                ),
                hintText: "Digite seu Cupom",
              ),
              initialValue: "",
              onChanged: change,
            ),
          ),
          CustomRaisebuttonWidget(
            text: "Validar",
            textcolor: Colors.white,
            cor: Theme.of(context).accentColor,
            function: (){
              Modular.get<CarrinhoController>().getDesconto();
              FocusScope.of(context).unfocus();
            },
          ),
          SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
