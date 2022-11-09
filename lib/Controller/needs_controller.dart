// ignore_for_file: unnecessary_new

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../Veiw/widgets/text_widget.dart';
import '../theme app.dart';

class NeedsController extends GetxController {
  Rx<TextEditingController> controllerMoney = TextEditingController().obs;
  String dropdownvalue = 'فاتوره الكهرباء ';
  var items = [
    DropdownMenuItem(
      value: 'فاتوره الكهرباء ',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextWidget(
            text: 'فاتوره الكهرباء',
            color: ThemeApp.black,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.emoji_objects,
            color: ThemeApp.darkGreen,
          ),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 'فاتوره الماء ',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextWidget(
            text: 'فاتوره الماء',
            color: ThemeApp.black,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.water_drop, color: ThemeApp.darkGreen),
        ],
      ),
    ),
    DropdownMenuItem(
      value: 'فاتوره الجوال ',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextWidget(
            text: 'فاتوره الجوال',
            color: ThemeApp.black,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.phone_iphone, color: ThemeApp.darkGreen),
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
          const Icon(Icons.remove_circle, color: ThemeApp.darkGreen),
        ],
      ),
    ),
  ];
}
