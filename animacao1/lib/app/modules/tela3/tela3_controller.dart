import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'tela3_controller.g.dart';

@Injectable()
class Tela3Controller = _Tela3ControllerBase with _$Tela3Controller;

abstract class _Tela3ControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
