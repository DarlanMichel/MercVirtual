import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'App Mercado Virtual',
      theme: ThemeData(
          primaryColor: Colors.green,
          accentColor: Color.fromRGBO(36, 53, 40, 1),
          backgroundColor: Colors.white
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
