// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tela2_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $Tela2Controller = BindInject(
  (i) => Tela2Controller(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Tela2Controller on _Tela2ControllerBase, Store {
  final _$valueAtom = Atom(name: '_Tela2ControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_Tela2ControllerBaseActionController =
      ActionController(name: '_Tela2ControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_Tela2ControllerBaseActionController.startAction(
        name: '_Tela2ControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_Tela2ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
