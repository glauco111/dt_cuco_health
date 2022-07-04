import 'package:cuco_health/src/core/domain/enums/page_state.dart';
import 'package:cuco_health/src/modules/friends/presentation/pages/empty_friends_page.dart';
import 'package:cuco_health/src/modules/friends/presentation/widgets/head_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/load_page.dart';
import '../../../bottom_navigation/presentation/controller/bottom_navigation_controller.dart';
import '../controller/friends_controller.dart';
import 'success_friends_page.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key}) : super(key: key);

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage>
    with AutomaticKeepAliveClientMixin {
  late final FriendsController controller;

  @override
  void initState() {
    reaction<bool>((r) => controller.friends.isEmpty, (isEmpty) {
      if (isEmpty) {
        controller.setState(PageState.empty);
      }
    });

    controller = context.read<FriendsController>();
    controller.pipeline(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(height: 50, title: 'Amigos'),
        body: Observer(builder: (context) {
          if (controller.friends.isEmpty && !controller.state.isLoading) {
            return FriendsHeaderWidget(
              controller: controller,
              body: EmptyFriendsPage(
                controller: controller,
              ),
            );
          }
          if (controller.state.isSuccess) {
            return FriendsHeaderWidget(
              controller: controller,
              body: SuccessFriendsPage(
                controller: controller,
              ),
            );
          } else {
            return const LoadPage();
          }
        }));
  }

  @override
  bool get wantKeepAlive => true;
}
