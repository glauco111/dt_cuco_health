import 'package:cuco_health/src/modules/bottom_navigation/presentation/controller/bottom_navigation_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/domain/entities/person_entities.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/load_page.dart';
import 'success_friends_details_page.dart';
import 'package:provider/provider.dart';

class FriendsDetailsPage extends StatefulWidget {
  final Person person;
  const FriendsDetailsPage({Key? key, required this.person}) : super(key: key);

  @override
  State<FriendsDetailsPage> createState() => _FriendsDetailsPageState();
}

class _FriendsDetailsPageState extends State<FriendsDetailsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(height: 50, back: true),
        body: Observer(builder: (context) {
          return SuccessFriendsDetailsPage(person: widget.person);
        }));
  }

  @override
  bool get wantKeepAlive => true;
}
