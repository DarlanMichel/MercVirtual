import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx_helpers/flutter_mobx_helpers.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';
import 'package:mercadovirtual/app/modules/home/home_page.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  var pageController = PageController();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
//  BuildContext scaffoldContext;

  @observable
  int selectedIndex = 0;

  @action
  void changePage(int index) {
    pageController.jumpToPage(index);
    selectedIndex = index;
  }

  void showInSnackBar(String value) {
    //Scaffold.of(scaffoldKey.currentContext).showSnackBar(
//    ObserverListener(
//      listener: (_){
        scaffoldKey.currentState.showSnackBar(
            new SnackBar(
              content: new Text(value),
              duration: Duration(seconds: 3),
              backgroundColor: Theme.of(scaffoldKey.currentContext).accentColor,
            )
        );
//      },
//    );
  }



}
