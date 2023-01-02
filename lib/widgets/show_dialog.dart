import 'package:flutter/material.dart';

// class ErrorDialog extends StatelessWidget {
//   const ErrorDialog({super.key});

//   @override
//   Widget build(BuildContext context) {
// return Container();
// }
// }

class ErrorDialog {
  static  errorDialog(
      {context,
      String? msgError,
      String? titleError,
      String? textButton}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(titleError = ''),
            content: Text(msgError = ''),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(textButton = ''),
              )
            ],
          );
        });
  }
}
