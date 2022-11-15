import 'package:flutter/material.dart';

import '../../theme app.dart';
import 'button.dart';
import 'text_widget.dart';

class Alert extends StatelessWidget {
  String text;
  Color color;
  IconData icon;
  Alert(
      {required this.text, required this.color, required this.icon, super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Icon(
        icon,
        size: 45,
        color: color,
      ),
      content: SizedBox(
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: TextWidget(
              text: text,
              color: color,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            )),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: color,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: TextWidget(
                    color: ThemeApp.white,
                    text: 'انتهاء',
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
