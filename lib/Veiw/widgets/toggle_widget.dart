import 'package:flutter/material.dart';

class ToggleWidget extends StatelessWidget {
  const ToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        height: 40,
        width: 100,
        ),
    );
  }
}