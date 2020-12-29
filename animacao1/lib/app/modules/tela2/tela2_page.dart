import 'package:animacao1/app/modules/tela2/widgets/topAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'tela2_controller.dart';

class Tela2Page extends StatefulWidget {
  final String title;
  const Tela2Page({Key key, this.title = "Tela2"}) : super(key: key);

  @override
  _Tela2PageState createState() => _Tela2PageState();
}

class _Tela2PageState extends ModularState<Tela2Page, Tela2Controller>
    with SingleTickerProviderStateMixin {
  //use 'controller' variable to access controller
  AnimationController _animationController;
  var myTween = Tween(begin: 0, end: 100);

  @override
  void initState() {
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
      reverseDuration: Duration(seconds: 2),
    );
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: FloatingActionButton.extended(
                  backgroundColor: Colors.green,
                  label: Text('Próxima Pagina'),
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () async {
                    await _animationController.reverse();
                    Modular.to.pushReplacementNamed('/tela2');
                  },
                ),
              )
            ],
          ),
          TopAppBar(
            controller: _animationController,
            /* filho: Image.network(
              'https://i.pinimg.com/originals/ac/a9/4d/aca94d8d072082682dec2a1584533dda.png',
              width: 25,
            ), */
            filho: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}
