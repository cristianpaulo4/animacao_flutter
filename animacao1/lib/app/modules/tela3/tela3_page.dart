import 'package:animacao1/app/modules/tela3/widgets/form.dart';
import 'package:animacao1/app/modules/tela3/widgets/input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'tela3_controller.dart';

class Tela3Page extends StatefulWidget {
  final String title;
  const Tela3Page({Key key, this.title = "Tela3"}) : super(key: key);

  @override
  _Tela3PageState createState() => _Tela3PageState();
}

class _Tela3PageState extends ModularState<Tela3Page, Tela3Controller>
    with SingleTickerProviderStateMixin {
  //use 'controller' variable to access controller
  AnimationController _animationController;

  Animation<double> descer;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    descer = Tween<double>(begin: 1000, end: 0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0, 0.3),
      ),
    );

    _animationController.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          FormLogin(
            controller: _animationController,
          ),
          AnimatedBuilder(
            animation: descer,
            builder: (context, child) {
              return Container(
                height: descer.value,
                width: double.infinity,
                color: Colors.green,
              );
            },
          ),
        ],
      ),
    );
  }
}
