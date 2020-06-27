import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_dialog_add_produto/custom_dialog_add_produto_controller.dart';
import 'package:oktoast/oktoast.dart';


class CustomDialogAddProdutoWidget extends StatefulWidget {
  final String descricao;
  final int idProduto;
  final GlobalKey<ScaffoldState> scaffoldKey;
  const CustomDialogAddProdutoWidget({Key key,@required this.descricao, this.scaffoldKey,@required this.idProduto}) : super(key: key);

  @override
  _CustomDialogAddProdutoWidgetState createState() => _CustomDialogAddProdutoWidgetState();
}

class _CustomDialogAddProdutoWidgetState extends ModularState<CustomDialogAddProdutoWidget, CarrinhoController> {
   CustomDialogAddProdutoController _count = CustomDialogAddProdutoController();
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
                  "${widget.descricao}",
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
                    onPressed: () async{
                      var result = await controller.salvar(widget.idProduto, _count.value);
                      if(result){
                        showToast(
                          "Produto adicionado ao carrinho!",
                          position: ToastPosition.center,
                          duration: Duration(seconds: 3),
                        );
                        Navigator.pop(context);
                      }else{
                        showToast(
                            "Erro ao adicionar Produto no carrinho!",
                            position: ToastPosition.center,
                            duration: Duration(seconds: 3),
                            backgroundColor: Colors.red
                        );
                      }
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

