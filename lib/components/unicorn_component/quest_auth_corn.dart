import 'package:flutter/material.dart';

class QuestDialog {
  static Future qShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_outlined, color: Colors.red),
              ),
            ],
            content: Container(
              color: Colors.grey,
              height: MediaQuery.of(context).size.height * .30,
              width: MediaQuery.of(context).size.width * .30,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.black45,
                    ),
                    child: TextFormField(
                      maxLength: 50,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        labelText: 'Como a Ninha e o Ninho se conheceram? :',

                      ),
                      onSaved: null,
                    ),
                  ),
                  //aqui vai o botão de enviar
                ],
              ),
            ),
          );
        });
  }
}
