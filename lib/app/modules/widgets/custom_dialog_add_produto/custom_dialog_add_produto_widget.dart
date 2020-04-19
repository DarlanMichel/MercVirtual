import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialogAddProdutoWidget extends StatelessWidget {
  final String descricao;

  const CustomDialogAddProdutoWidget({Key key, this.descricao}) : super(key: key);

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
                descricao,
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
                    onPressed: (){},
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: (){}
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
//                          GlobalKey<ScaffoldState>().currentState.showSnackBar(
//                              SnackBar(
//                                content: Text(
//                                    "Produto adicionado ao carrinho!"
//                                ),
//                                backgroundColor: Theme.of(context).accentColor,
//                                duration: Duration(seconds: 3),
//                              )
//                          );
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
