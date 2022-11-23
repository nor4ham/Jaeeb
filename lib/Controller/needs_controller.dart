// ignore_for_file: unnecessary_new

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../Veiw/widgets/text_widget.dart';
import '../theme app.dart';

class NeedsController extends GetxController {
  Rx<TextEditingController> controllerMoney = TextEditingController().obs;
  Rx<TextEditingController> controllerDate = TextEditingController().obs;
  final toggleValue = false.obs;
  var needs = [].obs;
  var total = 0.0.obs;
  final dropdownvalue = 'فاتوره الكهرباء '.obs;
  var items = [
    DropdownMenuItem(
      value: 'فاتوره الكهرباء ',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            const Icon(
              Icons.emoji_objects,
              color: ThemeApp.darkGreen,
            ),
            const SizedBox(
              width: 10,
            ),
            TextWidget(
              text: 'فاتوره الكهرباء',
              color: ThemeApp.whiteGray,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'فاتوره الماء ',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            const Icon(Icons.water_drop, color: ThemeApp.darkGreen),
            const SizedBox(
              width: 10,
            ),
            TextWidget(
              text: 'فاتوره الماء',
              color: ThemeApp.whiteGray,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'فاتوره الجوال ',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            const Icon(Icons.phone_iphone, color: ThemeApp.darkGreen),
            const SizedBox(
              width: 10,
            ),
            TextWidget(
              text: 'فاتوره الجوال',
              color: ThemeApp.whiteGray,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'نقل ',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            const Icon(Icons.directions_bus, color: ThemeApp.darkGreen),
            const SizedBox(
              width: 10,
            ),
            TextWidget(
              text: 'نقل',
              color: ThemeApp.whiteGray,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'اخر ',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            const Icon(Icons.add_circle, color: ThemeApp.darkGreen),
            const SizedBox(
              width: 10,
            ),
            TextWidget(
              text: 'اخر',
              color: ThemeApp.whiteGray,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
      ),
    ),
  ];
}
