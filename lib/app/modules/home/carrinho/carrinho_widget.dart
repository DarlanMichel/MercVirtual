import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';
import 'package:mercadovirtual/app/modules/widgets/card_produto_carrinho/card_produto_carrinho_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/card_total_carrinho/card_total_carrinho_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/discount_card/discount_card_widget.dart';

class CarrinhoWidget extends StatefulWidget {
  @override
  _CarrinhoWidgetState createState() => _CarrinhoWidgetState();
}

class _CarrinhoWidgetState extends ModularState<CarrinhoWidget, CarrinhoController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ListView(
        children: <Widget>[
          Observer(
            builder: (_){
              if(controller.listaCarrinho.hasError){
                return Center(
                  child: RaisedButton(
                    onPressed: controller.getList,
                    child: Text('Recarregar'),
                  )
                );
              }
              if(controller.listaCarrinho.data == null){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              List<CarrinhoModel> listCart = controller.listaCarrinho.data;

              return ListView.builder(
                padding: EdgeInsets.all(8.0),
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: listCart.length,
                itemBuilder: (_, index){
                  CarrinhoModel model = listCart[index];
                  return CardProdutoCarrinhoWidget(
                    model: model,
                  );
                },
              );
            },
          ),
          DiscountCardWidget(),
          CardTotalCarrinhoWidget(),
        ],
      ),
    );
  }
}

