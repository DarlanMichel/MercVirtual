import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_section/custom_card_section_widget.dart';

class SectionScreenWidget extends StatefulWidget {
  @override
  _SectionScreenWidgetState createState() => _SectionScreenWidgetState();
}

class _SectionScreenWidgetState extends ModularState<SectionScreenWidget,SectionScreenController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Selecione a Categoria Desejada",
            style: TextStyle(
                fontSize: 22,
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Expanded(
          child: Container(
            //height: MediaQuery.of(context).size.height,
            //Gridview.count
              child: Observer(
                  builder: (BuildContext context){
                    if(controller.listaCategoria.hasError){
                      return Center(
                        child: Text("Ocorreu um erro ao realizar essa requisição."),
                      );
                    }
                    if(controller.listaCategoria.value == null){
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return CustomScrollView(
                      slivers: List.generate(
                          1,
                              (item) => SliverGrid(
                            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 250,
                                mainAxisSpacing: 3,
                                crossAxisSpacing: 3,
                                childAspectRatio: 1.3
                            ),
                            delegate: SliverChildBuilderDelegate(
                                    (BuildContext context, int index){
                                  return CustomCardSectionWidget(
                                    nomeCategoria: controller.listaCategoria.value[index].desc,
                                    codCategoria: controller.listaCategoria.value[index].codSecao,
                                  );
                                },
                                childCount: controller.listaCategoria.value.length
                            ),
                          )
                      ),
                    );
                  }
              )
          ),
        ),
      ],
    );
  }
}

