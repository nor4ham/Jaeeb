

// ignore_for_file: unnecessary_new

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../Veiw/widgets/text_widget.dart';
import '../theme app.dart';

class ExpensesController extends GetxController {
  Rx<TextEditingController> controllerMoney = TextEditingController().obs;
  Rx<TextEditingController> controllerDate = TextEditingController().obs;
  String dropdownvalue = 'التسوق';
  var items = [
    DropdownMenuItem(
      value: 'التسوق',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextWidget(
            text: 'التسوق',
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
      value: 'مطعم ',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextWidget(
            text: 'مطعم',
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
      value: 'قهوة ',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextWidget(
            text: 'قهوة',
            color: ThemeApp.black,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.local_cafe, color: ThemeApp.darkGreen),
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
