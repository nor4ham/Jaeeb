// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jaeeb/theme%20app.dart';
import 'package:intl/intl.dart' as intel;

class DateField extends StatefulWidget {
  final TextEditingController controller;
  DateField({required this.controller, super.key});

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: 
          
          TextFormField(
            controller: widget.controller, //
            // obscureText: true,
            style: TextStyle(
              color: Color.fromRGBO(81, 152, 114, 1),
              fontSize: 17,
            ),
            cursorColor: Color.fromRGBO(81, 152, 114, 1),
            decoration: InputDecoration(
              // icon: Icon(Icons.calendar_today_rounded),
              prefixIcon: Icon(Icons.calendar_today),
              hintText: 'التاريخ',
              hintStyle: TextStyle(color: ThemeApp.whiteGray),
              border: OutlineInputBorder(
                borderSide: BorderSide(color:  ThemeApp.whiteGray),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color:  ThemeApp.whiteGray),
              ),
            ),
            onTap: () async {
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101));
              if (pickeddate != null) {
                setState(() {
                  widget.controller.text =
                      intel.DateFormat("yyy-dd-mm").format(DateTime.now());
                });
              }
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
    );
  }
}
