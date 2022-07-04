import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../../../core/domain/entities/person_entities.dart';
import '../../../../core/theme/cuco_colors.dart';
import '../../../../core/theme/cuco_icons.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../bottom_navigation/presentation/controller/bottom_navigation_controller.dart';

class SuccessPerfilPage extends StatefulWidget {
  final Person person;
  const SuccessPerfilPage({Key? key, required this.person}) : super(key: key);

  @override
  State<SuccessPerfilPage> createState() => _SuccesssPageSPerfiltate();
}

class _SuccesssPageSPerfiltate extends State<SuccessPerfilPage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    var pageSize = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return SingleChildScrollView(
      child: Container(
        transform: Matrix4.translationValues(0, -1, 0),
        child: Stack(
          children: [
            Container(
              height: pageSize.height * 0.35,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  CucoColors.of(context).primary,
                  theme.backgroundColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
            ),
            Center(
                child: Column(
              children: [
                header(theme),
                SizedBox(height: 40),
                body(
                  theme,
                )
              ],
            )),
          ],
        ),
      ),
    );
  }

  Widget header(ThemeData theme) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: 202,
          height: 202,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.colorScheme.secondary,
              border: Border.all(
                  color: CucoColors.of(context).secundary, width: 2)),
          child: ClipOval(
            child: Image.network(
              widget.person.photo,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(widget.person.name, style: theme.textTheme.headline4),
        Text(widget.person.title,
            style: theme.textTheme.overline!
                .copyWith(color: theme.colorScheme.secondary)),
      ],
    );
  }

  Widget body(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          detailItens(
              theme: theme,
              icon: CucoIcons.email,
              key: 'Email',
              value: widget.person.email),
          const SizedBox(height: 20),
          detailItens(
              theme: theme,
              icon: CucoIcons.phone,
              key: 'Celular',
              value: widget.person.phone),
          const SizedBox(height: 20),
          detailItens(
              theme: theme,
              icon: CucoIcons.location,
              key: 'Local',
              value: widget.person.local),
          const SizedBox(height: 20),
          detailItens(
              theme: theme,
              icon: CucoIcons.cake,
              key: 'Idade',
              value: '${widget.person.age} Anos')
        ],
      ),
    );
  }

  Widget detailItens(
      {required ThemeData theme,
      required IconData icon,
      required String key,
      required String value}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon),
        const SizedBox(
          width: 10,
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(key, style: theme.textTheme.overline),
              Text(value, style: theme.textTheme.bodyText1),
            ],
          ),
        ),
      ],
    );
  }
}
