import '../../../friends/presentation/pages/friends_page.dart';
import '../../../perfil/presentation/page/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/bottom_navigation_controller.dart';
import '../widgets/bottom_navigation_widget.dart';

class CucoPageView extends StatelessWidget {
  const CucoPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController controller =
        context.read<BottomNavigationController>();

    return Scaffold(
        bottomNavigationBar: const BottomNavigationWidget(),
        body: PageView(
            controller: controller.controller,
            onPageChanged: controller.setCurrentIndex,
            children: const [
              PerfilPage(),
              FriendsPage(),
            ],
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics())));
  }
}
