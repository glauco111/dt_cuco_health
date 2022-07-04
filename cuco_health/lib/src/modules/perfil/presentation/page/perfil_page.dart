import 'package:cuco_health/src/modules/bottom_navigation/presentation/controller/bottom_navigation_controller.dart';

import '../../../../core/domain/enums/page_state.dart';
import '../../../../core/widgets/load_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import '../controller/perfil_controller.dart';
import 'success_perfil_page.dart';
import 'package:provider/provider.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage>
    with AutomaticKeepAliveClientMixin {
  late final PerfilController controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<PerfilController>();
    controller.pipeline(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const CustomAppBar(height: 50, title: 'Meu Perfil'),
      body: Observer(builder: (context) {
        if (controller.state.isSuccess) {
          return SuccessPerfilPage(person: controller.person!);
        } else {
          return const LoadPage();
        }
      }),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
