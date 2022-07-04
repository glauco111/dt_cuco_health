import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashController {
  SplashController();

  Future<void> pipeline(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
  }
}
