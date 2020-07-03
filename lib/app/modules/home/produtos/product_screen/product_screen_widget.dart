import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/models/produto_model.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_produto/custom_card_produto_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_dialog_add_produto/custom_dialog_add_produto_widget.dart';

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
          if(controller.listaProduto.hasError){
            return Center(
                child: RaisedButton(
                  onPressed: controller.getProdutos('', 0),
                  child: Text('Recarregar'),
                )
            );
          }

          if(controller.listaProduto.data == null){
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          List<ProdutoModel> listProd = controller.listaProduto.data;

          return ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: listProd.length,
            itemBuilder: (_, index){
              ProdutoModel model = listProd[index];
              return CustomCardProdutoWidget(
                produtoModel: model,
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return CustomDialogAddProdutoWidget(model: model,);
                      }
                  );
                },
              );
              },
          );
        }
      ),
    );
  }
}

