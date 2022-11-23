// ignore_for_file: prefer_const_constructors, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/Veiw/goals_veiw.dart';
import 'package:jaeeb/theme%20app.dart';

import '../../Controller/goals_controller.dart';
import 'card_goals.dart';
import 'text_widget.dart';

GoalsController controller = Get.find(tag: "data");

class ListViewOfGoals extends StatelessWidget {
  final bool isDarkMode;
  ListViewOfGoals({required this.isDarkMode, super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.goals.isEmpty) {
        return Center(
          child: TextWidget(text: 'اضافة مدخرات ', color: isDarkMode?ThemeApp.whiteGray :ThemeApp.black, fontSize: 12, fontWeight: FontWeight.w400,),
        );
      } else {
        return ListView.builder(
          shrinkWrap: true,
          itemCount: controller.goals.length /* controller.expenses.length */,
          itemBuilder: (context, index) {
            return CardGoals(
              index: index,
              isDarkMode: isDarkMode,
              total: controller.goals.value[index].ratio2,
              part: controller.goals.value[index].ratio1,
            );
          },
        );
      }
    });
  }
}
