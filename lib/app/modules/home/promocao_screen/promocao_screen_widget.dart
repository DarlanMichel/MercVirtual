import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_promo/custom_card_promo_widget.dart';

class PromocaoScreenWidget extends StatefulWidget {
  @override
  _PromocaoScreenWidgetState createState() => _PromocaoScreenWidgetState();
}

class _PromocaoScreenWidgetState extends ModularState<PromocaoScreenWidget, PromocaoScreenController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/logo2.png",
                  height: 100,
                  width: 100,
                ),
                Text(
                  "Bem Vindo(a)!",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Confira nossas Ofertas!",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 350,
                  child: Observer(
                    builder: (BuildContext context){
                      if(controller.listaPromocao == null){
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Swiper(
                        itemBuilder: (_, index) {
                          return CustomCardPromoWidget(
                            descricao: controller.listaPromocao[index].produto.descricao,
                            ean: controller.listaPromocao[index].produto.ean,
                            preco: controller.listaPromocao[index].produto.preco,
                            datafim: controller.listaPromocao[index].datafim,
                            novopreco: controller.listaPromocao[index].novopreco,
                            idProduto: controller.listaPromocao[index].codprod,
                          );
                        },
                        itemCount: controller.listaPromocao.length,
                        control: SwiperControl(),
                        autoplayDelay: 5000,
                        autoplay: true,
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

