import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_controller.dart';
import 'package:mercadovirtual/app/modules/home/models/carrinho_model.dart';
import 'package:mercadovirtual/app/modules/home/models/endereco_model.dart';
import 'package:mercadovirtual/app/modules/home/models/formaPagto_model.dart';
import 'package:mercadovirtual/app/modules/home/perfil/endereco/endereco_controller.dart';
import 'package:mercadovirtual/app/modules/home/perfil/pagamento/pagamento_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/card_produto_carrinho/card_produto_carrinho_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/card_total_carrinho/card_total_carrinho_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_combobox/custom_combobox_widget.dart';
import 'package:mercadovirtual/app/modules/widgets/discount_card/discount_card_widget.dart';

class CarrinhoWidget extends StatefulWidget {
  @override
  _CarrinhoWidgetState createState() => _CarrinhoWidgetState();
}

class _CarrinhoWidgetState
    extends ModularState<CarrinhoWidget, CarrinhoController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white,
    ));

    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Observer(builder: (_) {
          if (controller.listaCarrinho.data == null || controller.listaCarrinho.value.length == 0) {
            return Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.remove_shopping_cart,
                    size: 80,
                    color: Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Carrinho Vazio!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            );
          }

          if (controller.listaCarrinho.hasError) {
            return Center(
                child: RaisedButton(
                  onPressed: controller.getList,
                  child: Text('Recarregar'),
                ));
          }

          return ListView(
            children: <Widget>[
              Observer(
                builder: (_) {
                  List<CarrinhoModel> listCart = controller.listaCarrinho.data;

                  return ListView.builder(
                    padding: EdgeInsets.all(8.0),
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: listCart.length,
                    itemBuilder: (_, index) {
                      CarrinhoModel model = listCart[index];
                      return CardProdutoCarrinhoWidget(
                        model: model,
                      );
                    },
                  );
                },
              ),
              Observer(
                builder: (_) {
                  if (Modular.get<EnderecoController>().getEndereco == null) {
                    return Text("Nenhum endereço Cadastrado!");
                  }

                  List<EnderecoModel> listEnd =
                      Modular.get<EnderecoController>().listaEndereco.data;

                  return CustomComboboxWidget(
                    itens: listEnd
                        .map((data) => Model(data.id, data.descricao))
                        .toList(),
                    onChange: (model) => controller.setEndereco(EnderecoModel(
                        id: model.id, descricao: model.descricao)),
                    itemSelecionado: null,
                    text: "o Endereço",
                    icon: FontAwesomeIcons.mapMarkerAlt,
                  );
                },
              ),
              Observer(
                builder: (_) {
                  if (Modular.get<PagamentoController>().getFormaPagto ==
                      null) {
                    return CircularProgressIndicator();
                  }

                  List<FormaPagtoModel> listForma =
                      Modular.get<PagamentoController>().listaFormaPagto.data;

                  return CustomComboboxWidget(
                    itens: listForma
                        .map((data) => Model(data.id, data.nome))
                        .toList(),
                    onChange: (model) => controller.setFormaPagto(
                        FormaPagtoModel(id: model.id, nome: model.descricao)),
                    itemSelecionado: null,
                    text: "a Forma de Pagamento",
                    icon: FontAwesomeIcons.creditCard,
                  );
                },
              ),
              DiscountCardWidget(change: controller.setDesconto,),
              CardTotalCarrinhoWidget(),
            ],
          );
        }));
  }
}
