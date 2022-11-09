// ignore_for_file: prefer_initializing_formals, avoid_print

import 'package:flutter/material.dart';
import 'package:jaeeb/theme%20app.dart';

class dropdownListWidget extends StatelessWidget {
  String dropdownvalue;
  var items;
  /*   final items = [
    // ignore: unnecessary_new
    new Item('التسوق', TextWidget(text: 'التسوق', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w800,), Icons.store),
    new Item('مطعم',TextWidget(text: 'التسوق', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w800,), Icons.restaurant_menu),
    new Item('قهوة',TextWidget(text: 'التسوق', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w800,), Icons.local_cafe),
    new Item('نقل', TextWidget(text: 'التسوق', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w800,),Icons.directions_bus),
    new Item('فواتير',TextWidget(text: 'التسوق', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w800,), Icons.receipt_long),
    new Item('اخر',TextWidget(text: 'التسوق', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w800,),  Icons.control_point),
  ]; */

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
