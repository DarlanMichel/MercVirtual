import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';
import 'package:oktoast/oktoast.dart';

class CustomDialogExcluirWidget extends StatelessWidget {
  final CarrinhoModel model;

  const CustomDialogExcluirWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
        height: 300,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Deseja deletar o Produto?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "${model.produto.descricao}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 7.5, left: 15),
                    width: MediaQuery.of(context).size.width/2.8,
                    height: 55,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                              color: Theme.of(context).accentColor,
                              width: 3
                          )
                      ),
                      onPressed: () {
                        Modular.get<CarrinhoController>().delete(model);
                        showToast(
                            "Produto removido do carrinho!",
                            position: ToastPosition.center,
                            duration: Duration(seconds: 3),
                            backgroundColor: Colors.red
                        );
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sim",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 15, left: 7.5),
                    width: MediaQuery.of(context).size.width/2.8,
                    height: 55,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                              color: Theme.of(context).accentColor,
                              width: 3
                          )
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Não",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}