import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jaeeb/theme%20app.dart';
class PasswordFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function validator;
  PasswordFieldWidget(
      {required this.hintText,
      required this.controller,
      required this.validator,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
        child: TextFormField(
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          controller: this.controller,
          decoration: InputDecoration(
            hintText: this.hintText,
            hintStyle: GoogleFonts.ibmPlexSansArabic(
                color: ThemeApp.whiteGray,
                fontSize: 14,
                fontWeight: FontWeight.w800),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: ThemeApp.whiteGray),
            ),
          ),
      ),
    );
  }
}
