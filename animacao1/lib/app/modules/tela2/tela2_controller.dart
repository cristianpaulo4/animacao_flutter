import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'tela2_controller.g.dart';

@Injectable()
class Tela2Controller = _Tela2ControllerBase with _$Tela2Controller;

abstract class _Tela2ControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
