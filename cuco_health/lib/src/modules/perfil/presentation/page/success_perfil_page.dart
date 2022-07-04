import 'package:cuco_health/src/core/utils/extensions/numbers_extension.dart';
import 'package:cuco_health/src/modules/perfil/presentation/widgets/perfil_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/domain/entities/person_entities.dart';
import '../../../../core/theme/cuco_colors.dart';
import '../../../../core/theme/cuco_icons.dart';

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
                SizedBox(height: 40.scale),
                PerfilBodyWidget(person: widget.person)
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
          margin:  EdgeInsets.only(top: 10.scale),
          width: 202.scale,
          height: 202.scale,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.colorScheme.secondary,
              border: Border.all(
                  color: CucoColors.of(context).secundary, width: 2.scale)),
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

 
}
