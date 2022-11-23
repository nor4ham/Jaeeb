// ignore_for_file: unnecessary_new

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../Veiw/widgets/text_widget.dart';
import '../theme app.dart';

class ExpensesController extends GetxController {
  Rx<TextEditingController> controllerMoney = TextEditingController().obs;
  Rx<TextEditingController> controllerDate = TextEditingController().obs;
  var expenses = [].obs;
  var total = 0.0.obs;
  final dropdownvalue = 'التسوق'.obs;
  var items = [
    DropdownMenuItem(
      value: 'التسوق',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            const Icon(
              Icons.store,
              color: ThemeApp.darkGreen,
            ),
            const SizedBox(
              width: 10,
            ),
            TextWidget(
              text: 'التسوق',
              color: ThemeApp.whiteGray,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'مطعم ',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            const Icon(Icons.restaurant_menu, color: ThemeApp.darkGreen),
            const SizedBox(
              width: 10,
            ),
            TextWidget(
              text: 'مطعم',
              color: ThemeApp.whiteGray,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'قهوة ',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            const Icon(Icons.local_cafe, color: ThemeApp.darkGreen),
            const SizedBox(
              width: 10,
            ),
            TextWidget(
              text: 'قهوة',
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
