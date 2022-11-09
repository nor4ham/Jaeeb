// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:jaeeb/theme%20app.dart';
import 'package:intl/intl.dart' as intel;

class DateField extends StatelessWidget {
  final TextEditingController controller;
  DateField({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.only(top: 30),
        child: TextFormField(
          controller: controller, //
          obscureText: true,
          style: TextStyle(
            color:ThemeApp.darkGreen,
            fontSize: 17,
          ),
          cursorColor:ThemeApp.darkGreen,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.calendar_today),
            hintText: 'التاريخ',
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
          onTap: () async {
            DateTime? pickeddate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2021),
                lastDate: DateTime(2022));
                if (pickeddate != null) {
                           controller.text =
                            intel.DateFormat("yyy-dd-mm").format(DateTime.now());

                    }
          },
        ),
      ),
    );
  }
}
