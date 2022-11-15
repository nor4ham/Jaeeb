


// ignore_for_file: unnecessary_new

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../Veiw/widgets/text_widget.dart';
import '../theme app.dart';

class ExtraIncomeController extends GetxController {
  Rx<TextEditingController> controllerMoney = TextEditingController().obs;
  Rx<TextEditingController> controllerDate = TextEditingController().obs;
  final toggleValue = false.obs;
  String dropdownvalue = 'دوام جزئي';
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
