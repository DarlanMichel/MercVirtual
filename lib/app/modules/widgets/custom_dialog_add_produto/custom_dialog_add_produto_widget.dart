import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_dialog_add_produto/custom_dialog_add_produto_controller.dart';
import 'package:oktoast/oktoast.dart';

class CustomDialogAddProdutoWidget extends StatelessWidget {
  final ProdutoModel model;
  const CustomDialogAddProdutoWidget({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomDialogAddProdutoController _count = CustomDialogAddProdutoController();
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
                "${model.descricao}",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Selecione a Quantidade"
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: (){
                      if (_count.value == 1){
                        return _count.value = 1;
                      }else{
                        return _count.value --;
                      }
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Observer(
                      builder: (_) => Text(
                        "${_count.value}",
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: (){
                        _count.value ++;
                      }
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(right: 30, left: 30),
                width: MediaQuery.of(context).size.width,
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
                    Modular.get<CarrinhoController>().save(model.codigo, _count.value);
                    showToast(
                      "Produto adicionado ao carrinho!",
                      position: ToastPosition.center,
                      duration: Duration(seconds: 3),
                    );
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Adicionar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                  color: Theme.of(context).accentColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

