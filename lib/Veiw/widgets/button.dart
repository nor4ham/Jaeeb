import 'package:flutter/material.dart';
import 'package:jaeeb/theme%20app.dart';

import 'text_widget.dart';

class ButtonWidget extends StatelessWidget {
  var onPressed;
  String text;
  ButtonWidget({
    required this.text,
    required this.onPressed,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: ThemeApp.darkGreen,
            
          ),
          onPressed: onPressed,
          child: TextWidget(color: ThemeApp.white, text:text, fontSize: 14, fontWeight: FontWeight.w800,)),
    );
  }
}
