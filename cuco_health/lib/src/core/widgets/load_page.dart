import 'error_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                  left: 3,
                  top: 3,
                  child: InkWell(
                    onTap: () => ErrorModal().show(context, () {}),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 65,
                      height: 65,
                    ),
                  ),
                ),
                Positioned(
                  child: SizedBox(
                    width: 72,
                    height: 72,
                    child: CircularProgressIndicator(
                      backgroundColor: Theme.of(context).secondaryHeaderColor,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Carregando...')
          ],
        ),
      ),
    );
  }
}
