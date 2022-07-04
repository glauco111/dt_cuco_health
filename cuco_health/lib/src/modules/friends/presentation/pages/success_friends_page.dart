import 'package:cuco_health/src/modules/friends/presentation/controller/friends_controller.dart';
import 'package:cuco_health/src/modules/friends/presentation/widgets/friends_grid_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SuccessFriendsPage extends StatefulWidget {
  final FriendsController controller;
  const SuccessFriendsPage({Key? key, required this.controller})
      : super(key: key);
  @override
  State<SuccessFriendsPage> createState() => _SuccessFriendsPageState();
}

class _SuccessFriendsPageState extends State<SuccessFriendsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return FriendsGridWidget(friends: widget.controller.friends);
    });
  }
}
