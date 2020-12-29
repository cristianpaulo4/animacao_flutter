import 'package:animacao1/app/modules/tela3/widgets/input.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  final AnimationController controller;
  Animation<double> scala;
  FormLogin({Key key, this.controller})
      : scala = Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.3, 0.5),
          ),
        );

  Widget _build(BuildContext context, Widget child) {
    return Transform.scale(
      scale: scala.value,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Olá, Seja Bem-Vindo!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.green,
                  letterSpacing: 1,
                ),
              ),
              Divider(
                color: Colors.black45,
              ),
              Input(),
              Input(),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 60,
                child: FloatingActionButton.extended(
                  heroTag: null,
                  backgroundColor: Colors.green,
                  onPressed: () {
                    controller.reverse();
                  },
                  label: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _build,
    );
  }
}
