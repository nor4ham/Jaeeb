


// ignore_for_file: unnecessary_new, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../Veiw/widgets/text_widget.dart';
import '../theme app.dart';

class ExtraIncomeController extends GetxController {
  Rx<TextEditingController> controllerMoney = TextEditingController().obs;
  Rx<TextEditingController> controllerDate = TextEditingController().obs;
  var extraIncome = [].obs;
  var total = 0.0.obs;
  final toggleValue = false.obs;
    final dropdownvalue = 'دوام جزئي'.obs;
  var items = [
    DropdownMenuItem(
      value: 'دوام جزئي',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            const Icon(
              Icons.work,
              color: ThemeApp.darkGreen,
            ),
            const SizedBox(
              width: 10,
            ),
            TextWidget(
              text: 'دوام جزئي',
              color: ThemeApp.whiteGray,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),         
          ],
        ),
      ),
    ),
    DropdownMenuItem(
      value: 'عمل حر ',
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Row(
          children: [
            const Icon(Icons.auto_graph, color: ThemeApp.darkGreen),
            const SizedBox(
              width: 10,
            ),
            TextWidget(
              text: 'عمل حر ',
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
