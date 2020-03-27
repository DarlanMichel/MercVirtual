import 'package:mercadovirtual/app/modules/widgets/custom_card_produto/custom_card_produto_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_section/custom_card_section_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_card_promo/custom_card_promo_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_raisebutton/custom_raisebutton_controller.dart';
import 'package:mercadovirtual/app/modules/widgets/custom_textfield/custom_textfield_controller.dart';
import 'package:mercadovirtual/app/modules/login/cadastro_screen/cadastro_screen_controller.dart';
import 'package:mercadovirtual/app/modules/login/home_login_screen/home_login_screen_controller.dart';
import 'package:mercadovirtual/app/modules/login/login_screen/login_screen_controller.dart';
import 'package:mercadovirtual/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:mercadovirtual/app/app_widget.dart';
import 'package:mercadovirtual/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CustomCardProdutoController()),
        Bind((i) => CustomCardSectionController()),
        Bind((i) => CustomCardPromoController()),
        Bind((i) => CustomRaisebuttonController()),
        Bind((i) => CustomTextfieldController()),
        Bind((i) => CadastroScreenController()),
        Bind((i) => HomeLoginScreenController()),
        Bind((i) => LoginScreenController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
