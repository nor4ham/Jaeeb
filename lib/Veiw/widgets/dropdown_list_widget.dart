// ignore_for_file: prefer_initializing_formals, avoid_print

import 'package:flutter/material.dart';
import 'package:jaeeb/theme%20app.dart';

class dropdownListWidget extends StatelessWidget {
  String dropdownvalue;
  var items;
  dropdownListWidget(
      {required this.dropdownvalue, required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ThemeApp.whiteGray, width: 0.5))),
      value: dropdownvalue,
      onChanged: (value) {
        print(value);
      },
      icon: const Visibility(visible: false, child: Icon(Icons.arrow_downward)),
      elevation: 1,
      items: items,
    );
  }
}
