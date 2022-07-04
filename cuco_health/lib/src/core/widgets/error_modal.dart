import 'package:flutter/material.dart';

class ErrorModal {
  void show(BuildContext context, Function onPressed) {
    final theme = Theme.of(context);
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: WillPopScope(
              onWillPop: () async {
                return false;
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/error.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Falha ao obter dados!',
                      style: theme.textTheme.subtitle1),
                  Text(
                    'Algo inesperado ocorreu durante o recebimento dos dados.Tente novamente para continuar!',
                    style: theme.textTheme.overline,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      onPressed();
                    },
                    child: Text('Tentar Novamente',
                        style: theme.textTheme.button!
                            .copyWith(color: theme.primaryColor)),
                  )
                ],
              ),
            ),
          );
        });
  }
}
