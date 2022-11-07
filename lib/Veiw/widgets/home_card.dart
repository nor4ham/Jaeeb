import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'text.dart';

class MyWidget extends StatefulWidget {
  final String text;
  final String text2;
  final IconData icons2;
  final String color23;
  final String color1;
  const MyWidget(
      {required this.color23,
      required this.color1,
      required this.text,
      required this.text2,
      required this.icons2,
      super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Container(
        width: double.infinity,

        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(31)),
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              clipBehavior: Clip.hardEdge,
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Center(
                                child: Text(" ريال ",
                                    style: GoogleFonts.ibmPlexSansArabic(
                                      color: HexColor(this.widget.color1),
                                    )),
                              ),
                              Center(
                                  child: Text(this.widget.text2,
                                      style: GoogleFonts.ibmPlexSansArabic(
                                        color: HexColor(this.widget.color1),
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.black26,
                          width: 220,
                          // height: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                  child: Text(this.widget.text,
                                      style: GoogleFonts.ibmPlexSansArabic(
                                          fontSize: 18)
                                      // TextStyle(
                                      //     fontSize: 20, fontWeight: FontWeight.bold),
                                      )),
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.amber,
                          width: 50,
                          // height: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  this.widget.icons2,
                                  color: HexColor(
                                    this.widget.color23,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardHome extends StatelessWidget {
  final String text;
  final String money;
  final IconData icon;
  final Color color;
  const CardHome(
      {required this.text,
      required this.money,
      required this.color,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                Icon(icon),
                const SizedBox(
                  width: 20,
                ),
                TextWidget(text: text, color: color, fontSize: 59, fontWeight: FontWeight.w200,)
              ],
            ),
            Row(
              children: [Text("data")],
            )
          ],
        ),
      ),
    );
  }
}
