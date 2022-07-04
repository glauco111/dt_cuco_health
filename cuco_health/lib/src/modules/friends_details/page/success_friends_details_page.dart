import 'package:cuco_health/src/core/utils/extensions/numbers_extension.dart';
import 'package:flutter/material.dart';

import '../../../core/domain/entities/person_entities.dart';
import '../../../core/theme/cuco_colors.dart';
import '../../../core/theme/cuco_icons.dart';

class SuccessFriendsDetailsPage extends StatefulWidget {
  final Person person;
  const SuccessFriendsDetailsPage({Key? key, required this.person})
      : super(key: key);

  @override
  State<SuccessFriendsDetailsPage> createState() =>
      _SuccessFriendsDetailsPage();
}

class _SuccessFriendsDetailsPage extends State<SuccessFriendsDetailsPage> {
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
          margin: EdgeInsets.only(top: 10.scale),
          width: 202.scale,
          height: 202.scale,
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
        SizedBox(
          height: 10.scale,
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
      padding: EdgeInsets.symmetric(horizontal: 30.scale),
      child: Column(
        children: [
          detailItens(
              theme: theme,
              icon: CucoIcons.email,
              key: 'Email',
              value: widget.person.email),
          SizedBox(height: 20.scale),
          detailItens(
              theme: theme,
              icon: CucoIcons.phone,
              key: 'Celular',
              value: widget.person.phone),
          SizedBox(height: 20.scale),
          detailItens(
              theme: theme,
              icon: CucoIcons.location,
              key: 'Local',
              value: widget.person.local),
          SizedBox(height: 20.scale),
          detailItens(
              theme: theme,
              icon: CucoIcons.cake,
              key: 'Idade',
              value: '${widget.person.age} Anos'),
          SizedBox(height: 20.scale),
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
