import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  String text;
  Color color;
  double fontSize;
  FontWeight fontWeight;
  TextWidget({required this.text, required this.color,required this.fontSize,required this.fontWeight, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: GoogleFonts.ibmPlexSansArabic(
        color:color,
        fontSize:fontSize,
        fontWeight:fontWeight,
      )
      );
  }
}