import 'package:cuco_health/src/core/utils/extensions/numbers_extension.dart';
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
              width: 171.scale,
              height: 207.scale,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 49.scale,
                    top: 23.scale,
                    child: SizedBox(
                      width: 72.scale,
                      height: 72.scale,
                      child: CircularProgressIndicator(
                        backgroundColor: Theme.of(context).secondaryHeaderColor,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      'assets/images/vertical_logo.png',
                      width: 170.scale,
                      height: 207.scale,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(bottom: 20.scale),
              child: const Text('Inicializando..'))
        ],
      ),
    );
  }
}
