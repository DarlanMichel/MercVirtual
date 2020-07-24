import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/models/perfil_model.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_controller.dart';

class PerfilWidget extends StatefulWidget {
  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends ModularState<PerfilWidget, PerfilController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.vertical(bottom: Radius.circular(15.0)),
                        color: Theme.of(context).accentColor,
                      ),
                      child: Observer(
                        builder: (_){
                          if(controller.listaNome.hasError){
                            return Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Bem Vindo!",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            );
                          }
                          if(controller.listaNome.data == null){
                            return Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Bem Vindo!",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            );
                          }

                          List<PerfilModel> listperfil = controller.listaNome.data;

                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${listperfil[0].nome}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${listperfil[0].email}",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 120),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "images/logo2.png",
                              )
                          )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),


          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.location_on,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Endereços",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Meus Endereços de Entrega")
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: (){
                        Navigator.pushNamed(context, "/Home/perfil/endereco");
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.account_balance_wallet,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Pagamento",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Minhas Formas de Pagamento")
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.local_mall,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Pedidos",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Acompanhe seus pedidos")
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

