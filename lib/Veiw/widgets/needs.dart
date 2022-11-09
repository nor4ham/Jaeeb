import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/theme%20app.dart';

import '../../Controller/needs_controller.dart';
import 'dropdown_list_widget.dart';
import 'text_field.dart';
import 'text_widget.dart';

NeedsController controller =
    Get.put<NeedsController>(NeedsController(), tag: "data", permanent: true);

class Needs extends StatelessWidget {
  const Needs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                  text: 'المبلغ',
                  color: ThemeApp.darkGreen,
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TextFieldWidget(
              controller: controller.controllerMoney.value,
              hintText: 'المبلغ  ',
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                  text: 'الفئات',
                  color: ThemeApp.darkGreen,
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            dropdownListWidget(dropdownvalue: controller.dropdownvalue, items: controller.items,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                  text: 'المبلغ',
                  color: ThemeApp.darkGreen,
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                  text: 'المبلغ',
                  color: ThemeApp.darkGreen,
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                  text: 'المبلغ',
                  color: ThemeApp.darkGreen,
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
          ],
        ),
        Column(),
      ],
    );
  }
}
