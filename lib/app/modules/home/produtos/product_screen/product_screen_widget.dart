import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/produtos/product_screen/product_screen_controller.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_produto/custom_card_produto_widget.dart';

class ProductScreenWidget extends StatefulWidget {
  final int categoria;
  const ProductScreenWidget({Key key,@required this.categoria}) : super(key: key);

  @override
  _ProductScreenWidgetState createState() => _ProductScreenWidgetState();
}

class _ProductScreenWidgetState extends ModularState<ProductScreenWidget, TabpageprodController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 75,
      child: Observer(
        builder: (BuildContext context){
//          if(controller.listaProduto.hasError){
//            return Center(
//              child: Text("Ocorreu um erro ao realizar essa requisição."),
//            );
//          }
//          if(controller.listaProduto.value == null){
//            return Center(
//              child: CircularProgressIndicator(),
//            );
//          }
//          return ListView.builder(
//            padding: EdgeInsets.all(8.0),
//            itemCount: controller.listaProduto.value.length,
//            itemBuilder: (_, index){
//              return CustomCardProdutoWidget(
//                descricao: controller.listaProduto.value[index].descricao,
//                preco: controller.listaProduto.value[index].preco,
//                ean: controller.listaProduto.value[index].ean,
//                idProduto: controller.listaProduto.value[index].codigo,
//              );
//            },
//          );
              if(controller.listaProduto == null){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: controller.listaProduto.length,
                itemBuilder: (_, index){
                  return CustomCardProdutoWidget(
                    descricao: controller.listaProduto[index].descricao,
                    preco: controller.listaProduto[index].preco,
                    ean: controller.listaProduto[index].ean,
                    idProduto: controller.listaProduto[index].codigo,
                  );
                },
              );
        }
      ),
    );
  }
}

