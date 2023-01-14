import 'package:flutter/material.dart';
import '../Models/safety.dart';
class SkillsItem extends StatelessWidget {
  const SkillsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Safety safety = Safety();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            
            SizedBox(
              height: 10,
              width: 10,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                onPressed: () {
                  safety.countUnicorn(context);
                },
                child: const SizedBox(),
              ),
            ),
            SizedBox(width: 15),
          ],
        ),
        const SizedBox(),
        // Card(
        //   child: ListTile(),
        // ),
      ],
    );
  }
}
