import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Botao extends StatelessWidget {
  final AnimationController controller;

  Animation<double> reduzir;
  Animation<double> expandir;
  Animation<double> arredondar;
  Botao({Key key, this.controller})
      : reduzir = Tween<double>(begin: 300, end: 60).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0,
              0.100,
            ),
          ),
        ),
        expandir = Tween<double>(begin: 60, end: 1000).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.8,
              1,
            ),
          ),
        ),
        arredondar = Tween<double>(begin: 350, end: 0.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.8,
              1,
            ),
          ),
        );

  Widget _animatedBuild(BuildContext context, Widget child) {
    return InkWell(
      onTap: () async {
        await controller.forward();
        if (controller.isCompleted) {
          Modular.to.pushReplacementNamed('/tela');
        }
      },
      child: Visibility(
        visible: expandir.value < 70,
        child: Container(
          alignment: Alignment.center,
          child: Visibility(
            visible: reduzir.value > 70,
            child: Text(
              'Entrar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 2,
              ),
            ),
            replacement: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.white,
              ),
            ),
          ),
          height: 60,
          width: reduzir.value,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        replacement: Container(
          height: expandir.value,
          width: expandir.value,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(arredondar.value),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _animatedBuild,
      animation: reduzir,
    );
  }
}
