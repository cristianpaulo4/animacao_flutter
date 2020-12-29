import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  final AnimationController controller;
  final Widget filho;

  Animation<double> diminuir;
  Animation<double> crescerLogo;
  TopAppBar({Key key, this.controller, this.filho})
      : diminuir = Tween<double>(
          begin: 1500,
          end: 250,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.0,
              0.3,
            ),
          ),
        ),
        crescerLogo = Tween<double>(
          begin: 0,
          end: 7,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.3,
              0.5,
            ),
          ),
        );

  Widget _animatedBuild(BuildContext context, Widget child) {
    return Container(
      height: diminuir.value,
      width: double.infinity,
      color: Colors.green,
      child: Center(
        child: Transform.scale(
          scale: crescerLogo.value,
          child: filho,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _animatedBuild,
    );
  }
}
