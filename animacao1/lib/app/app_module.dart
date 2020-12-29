import 'package:animacao1/app/modules/tela2/tela2_controller.dart';
import 'package:animacao1/app/modules/tela2/tela2_page.dart';
import 'package:animacao1/app/modules/tela3/tela3_controller.dart';
import 'package:animacao1/app/modules/tela3/tela3_page.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:animacao1/app/app_widget.dart';
import 'package:animacao1/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        $Tela2Controller,
        $Tela3Controller,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter(
          '/tela',
          child: (_, args) => Tela2Page(),
          transition: TransitionType.fadeIn,
        ),
        ModularRouter(
          '/tela2',
          child: (_, args) => Tela3Page(),
          transition: TransitionType.fadeIn,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
