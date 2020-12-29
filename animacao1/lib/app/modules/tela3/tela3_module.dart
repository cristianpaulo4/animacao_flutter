import 'tela3_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'tela3_page.dart';

class Tela3Module extends ChildModule {
  @override
  List<Bind> get binds => [
        $Tela3Controller,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => Tela3Page()),
      ];

  static Inject get to => Inject<Tela3Module>.of();
}
