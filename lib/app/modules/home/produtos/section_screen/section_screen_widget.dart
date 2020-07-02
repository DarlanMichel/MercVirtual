import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_controller.dart';

class SectionScreenWidget extends StatefulWidget {
  @override
  _SectionScreenWidgetState createState() => _SectionScreenWidgetState();
}

class _SectionScreenWidgetState extends ModularState<SectionScreenWidget,TabpageprodController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
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
            return ListView.builder(
                padding: EdgeInsets.all(8.0),
                scrollDirection: Axis.horizontal,
                itemCount: controller.listaCategoria.value.length,
                itemBuilder: (_, index){
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.changePage(index, controller.listaCategoria.value[index].codSecao);
                      });
                    },
                    child: Container(
                      constraints: BoxConstraints(minWidth: 101),
                      margin: const EdgeInsets.only(right: 10.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: controller.selectedCat == index ? Border.all() : Border(),
                        color: controller.selectedCat == index ? Colors.white : Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      child: Text(
                        "${controller.listaCategoria.value[index].desc}",
                        style: TextStyle(
                            color: controller.selectedCat == index ? Theme.of(context).accentColor : Colors.white
                        ),
                      ),
                    ),
                  );
                }
            );
          }
      ),
    );
  }
}

