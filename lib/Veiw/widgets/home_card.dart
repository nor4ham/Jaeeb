import 'package:flutter/material.dart';
import '../../theme app.dart';
import 'text_widget.dart';

class CardHome extends StatelessWidget {
  final String text;
  final String money;
  final IconData icon;
  final Color color;
  final bool isDarkMode;
  const CardHome(
      {required this.text,
      required this.money,
      required this.color,
      required this.icon,
      required this.isDarkMode,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDarkMode?ThemeApp.isDarkMode :ThemeApp.white,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 20, 10, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                TextWidget(
                  text: "ريال",
                  color: color,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                TextWidget(
                  text: money,
                  color: color,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
            Row(
              children: [
                TextWidget(
                  text: text,
                  color: color,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  width: 20,
                ),
                Icon(
                  icon,
                  color: color,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
