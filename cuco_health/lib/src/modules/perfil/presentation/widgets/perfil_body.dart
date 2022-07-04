import 'package:cuco_health/src/core/theme/cuco_icons.dart';
import 'package:cuco_health/src/core/utils/extensions/numbers_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/domain/entities/person_entities.dart';

class PerfilBodyWidget extends StatelessWidget {
  final Person person;
  
  const PerfilBodyWidget({Key? key, required this.person}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.scale),
      child: Column(
        children: [
          detailItens(
              theme: theme,
              icon: CucoIcons.email,
              key: 'Email',
              value: person.email),
          SizedBox(height: 20.scale),
          detailItens(
              theme: theme,
              icon: CucoIcons.phone,
              key: 'Celular',
              value: person.phone),
          SizedBox(height: 20.scale),
          detailItens(
              theme: theme,
              icon: CucoIcons.location,
              key: 'Local',
              value: person.local),
          SizedBox(height: 20.scale),
          detailItens(
              theme: theme,
              icon: CucoIcons.cake,
              key: 'Idade',
              value: '${person.age} Anos'),
          SizedBox(height: 30.scale),
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
        SizedBox(
          width: 10.scale,
        ),
        SizedBox(
          width: 10.scale,
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
