import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mercadovirtual/app/modules/home/carrinho/carrinho_module.dart';
import 'package:mercadovirtual/app/modules/home/perfil/perfil_module.dart';
import 'package:mercadovirtual/app/modules/home/produtos/tabpageprod/tabpageprod_module.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_module.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final PageController pageController = PageController();

  int _pageSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
                onPageChanged: (index){
                  setState(() {
                    _pageSelect = index;
                  });
                },
              children: <Widget>[
                RouterOutlet(
                  module: PromocaoScreenModule(),
                ),
                RouterOutlet(
                  module: TabpageprodModule(),
                ),
                RouterOutlet(
                  module: CarrinhoModule(),
                ),
                RouterOutlet(
                  module: PerfilModule(),
                ),
              ],
            ),
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageSelect,
        unselectedItemColor: Theme.of(context).accentColor,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: (i){
          pageController.jumpToPage(i);
          setState(() {
            _pageSelect = (i);
          });
        },
        showUnselectedLabels: true,
        showSelectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Promoções'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.boxes),
            title: Text('Produtos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Carrinho'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
          ),
        ],
      ),
    );
  }
}
