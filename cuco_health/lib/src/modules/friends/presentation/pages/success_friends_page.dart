import 'package:cuco_health/src/modules/friends/presentation/controller/friends_controller.dart';
import 'package:cuco_health/src/modules/friends/presentation/widgets/friends_grid_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/theme/cuco_colors.dart';
import '../../../../core/theme/cuco_icons.dart';
import '../../../../core/utils/consts.dart';
import '../../../../core/widgets/custom_app_bar.dart';

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
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return RefreshIndicator(
      onRefresh: () async {
        widget.controller.pipeline(context);
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                transform: Matrix4.translationValues(0, -1, 0),
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.15,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          CucoColors.of(context).primary,
                          Theme.of(context).backgroundColor,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 35,
                            width: 320,
                            child: TextField(
                              onChanged: widget.controller.setSearch,
                              decoration: inputBoxDecoration(theme),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.12,
                        ),
                        Observer(builder: (context) {
                          return FriendsGridWidget(
                              friends: widget.controller.friends);
                        }),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  InputDecoration inputBoxDecoration(ThemeData theme) {
    return InputDecoration(
      hintText: 'Buscar',
      suffixIcon: Icon(
        CucoIcons.search,
        color: theme.primaryColor,
      ),
    );
  }
}
