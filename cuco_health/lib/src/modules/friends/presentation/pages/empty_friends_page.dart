import 'package:cuco_health/src/core/utils/extensions/numbers_extension.dart';
import 'package:cuco_health/src/modules/friends/presentation/controller/friends_controller.dart';
import 'package:flutter/material.dart';

class EmptyFriendsPage extends StatefulWidget {
  final FriendsController controller;
  const EmptyFriendsPage({Key? key, required this.controller})
      : super(key: key);
  @override
  State<EmptyFriendsPage> createState() => _EmptyFriendsPageState();
}

class _EmptyFriendsPageState extends State<EmptyFriendsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'assets/images/empty.png',
          width: 293.scale,
          height: 381.scale,
        ),
        const Text('Nenhum amigo encontrado')
      ]),
    );
  }
}
