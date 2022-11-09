


// ignore_for_file: unnecessary_new

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../Veiw/widgets/text_widget.dart';
import '../theme app.dart';

class ExtraIncomeController extends GetxController {
  Rx<TextEditingController> controllerMoney = TextEditingController().obs;
  Rx<TextEditingController> controllerDate = TextEditingController().obs;
  String dropdownvalue = ' دوام جزئي';
  var items = [
    DropdownMenuItem(
      value: 'دوام جزئي',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextWidget(
            text: 'دوام جزئي',
            color: ThemeApp.black,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.store,
            color: ThemeApp.darkGreen,
          ),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 'عمل حر ',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextWidget(
            text: 'عمل حر ',
            color: ThemeApp.black,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.restaurant_menu, color: ThemeApp.darkGreen),
        ],
      ),
    ),
   
    DropdownMenuItem(
      value: 'اخر ',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextWidget(
            text: 'اخر',
            color: ThemeApp.black,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.add_circle, color: ThemeApp.darkGreen),
        ],
      ),
    ),
  ];
}
