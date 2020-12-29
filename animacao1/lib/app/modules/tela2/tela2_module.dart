import 'tela2_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'tela2_page.dart';

class Tela2Module extends ChildModule {
  @override
  List<Bind> get binds => [
        $Tela2Controller,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => Tela2Page()),
      ];

  static Inject get to => Inject<Tela2Module>.of();
}
