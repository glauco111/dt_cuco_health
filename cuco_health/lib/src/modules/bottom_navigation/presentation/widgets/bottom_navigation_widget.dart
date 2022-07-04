import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../../../core/theme/cuco_icons.dart';
import '../controller/bottom_navigation_controller.dart';


class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = context.read<BottomNavigationController>();

    return Observer(
      builder: (context) {
        return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CucoIcons.perfil,
                color: theme.colorScheme.secondary,
              ),
              activeIcon: const Icon(CucoIcons.perfilFill),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
                icon: Icon(CucoIcons.friends, color: theme.colorScheme.secondary),
                activeIcon: const Icon(CucoIcons.friendsFill),
                label: 'Amigos'),
          ],
          onTap: controller.animatedToIdex,
          currentIndex: controller.currentIndex,
        );
      }
    );
  }
}
