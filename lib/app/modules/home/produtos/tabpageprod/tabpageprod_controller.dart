import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'tabpageprod_controller.g.dart';

class TabpageprodController = _TabpageprodBase with _$TabpageprodController;

abstract class _TabpageprodBase with Store {
  var pageController = PageController();

  @observable
  int selectedIndex = 0;

  @action
  void changePage(int index) {
    pageController.jumpToPage(index);
    selectedIndex = index;
  }
}
