import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mercadovirtual/app/modules/home/produtos/section_screen/section_screen_widget.dart';
import 'package:mercadovirtual/app/modules/home/promocao_screen/promocao_screen_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {

  int _selectedIndex = 0;

  final _widgetOptions = List<Widget>.unmodifiable([
    PromocaoScreenWidget(),
    SectionScreenWidget(),
    Text(
      'Index 2: Carrinho',
    ),
    Text(
      'Index 3: Perfil',
    ),
  ]);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  initState() {
    super.initState();
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
        currentIndex: _selectedIndex,
        unselectedItemColor: Theme.of(context).accentColor,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
    );
  }
}
