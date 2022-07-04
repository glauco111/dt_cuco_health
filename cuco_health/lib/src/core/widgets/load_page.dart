import 'package:cuco_health/src/core/utils/extensions/numbers_extension.dart';

import 'error_modal.dart';
import 'package:flutter/material.dart';

class LoadPage extends StatelessWidget {
  const LoadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: <Widget>[
                Positioned(
                  left: 3.scale,
                  top: 3.scale,
                  child: InkWell(
                    onTap: () => ErrorModal().show(context, () {}),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 65.scale,
                      height: 65.scale,
                    ),
                  ),
                ),
                Positioned(
                  child: SizedBox(
                    width: 72.scale,
                    height: 72.scale,
                    child: CircularProgressIndicator(
                      backgroundColor: Theme.of(context).secondaryHeaderColor,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.scale),
            const Text('Carregando...')
          ],
        ),
      ),
    );
  }
}
