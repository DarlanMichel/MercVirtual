import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mercadovirtual/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var shared = await SharedPreferences.getInstance();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown])
      .then((_) => runApp(OKToast(child: ModularApp(module: AppModule(shared)))));
}
