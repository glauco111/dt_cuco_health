import 'package:cuco_health/src/core/utils/extensions/numbers_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../theme/cuco_icons.dart';
import '../theme/store/theme_store.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  final double height;
  final bool back;
  const CustomAppBar(
      {Key? key, required this.height, this.title, this.back = false})
      : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _CustomAppBarState extends State<CustomAppBar> {
  late final ThemeStore _themeStore;

  @override
  void initState() {
    _themeStore = context.read<ThemeStore>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      leading: widget.back
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Theme.of(context).backgroundColor,
              ))
          : null,
      title: widget.title != null
          ? Padding(
              padding: EdgeInsets.only(left: 5.scale),
              child: Text(
                widget.title!,
                style: theme.textTheme.subtitle1!
                    .copyWith(color: theme.colorScheme.surface),
              ),
            )
          : null,
      elevation: 0,
      toolbarHeight: widget.height.scale,
      backgroundColor: Theme.of(context).primaryColor,
      actions: [
        Observer(builder: (context) {
          return IconButton(
              onPressed: () => _themeStore.toggleThemeMode(),
              icon: _themeStore.themeMode == ThemeMode.light
                  ? Icon(CucoIcons.dark,
                      color: Theme.of(context).backgroundColor)
                  : Icon(CucoIcons.darkFill,
                      color: Theme.of(context).backgroundColor));
        })
      ],
    );
  }
}
