import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../controller/splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  late final SplashController controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<SplashController>()..pipeline(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Center(
            child: SizedBox(
              width: 171,
              height: 207,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 49,
                    top: 23,
                    child: SizedBox(
                      width: 72,
                      height: 72,
                      child: CircularProgressIndicator(
                        backgroundColor: Theme.of(context).secondaryHeaderColor,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/images/vertical_logo.png',
                      width: 170,
                      height: 207,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('Inicializando..'))
        ],
      ),
    );
  }
}
