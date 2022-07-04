import 'package:cuco_health/src/core/utils/extensions/numbers_extension.dart';
import 'package:cuco_health/src/modules/friends/presentation/controller/friends_controller.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/cuco_colors.dart';
import '../../../../core/theme/cuco_icons.dart';

class FriendsHeaderWidget extends StatefulWidget {
  final FriendsController controller;
  final Widget body;
  const FriendsHeaderWidget(
      {Key? key, required this.controller, required this.body})
      : super(key: key);
  @override
  State<FriendsHeaderWidget> createState() => _FriendsHeaderWidgetState();
}

class _FriendsHeaderWidgetState extends State<FriendsHeaderWidget> {
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
                      padding: EdgeInsets.only(
                          left: 30.scale, right: 30.scale, top: 20.scale),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: SizedBox(
                              height: 35.scale,
                              width: size.width * 0.8,
                              child: TextField(
                                onChanged: widget.controller.setSearch,
                                decoration: inputBoxDecoration(theme),
                              ),
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
                        widget.body
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
