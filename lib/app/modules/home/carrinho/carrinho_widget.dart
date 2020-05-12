import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/modules/widgets/card_frete/card_frete_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/card_produto_carrinho/card_produto_carrinho_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/card_total_carrinho/card_total_carrinho_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/discount_card/discount_card_widget.dart';

class CarrinhoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            CardProdutoCarrinhoWidget(),
            DiscountCardWidget(),
            CardFreteWidget(),
            CardTotalCarrinhoWidget()
          ],
        )
      ),
    );
  }
}
