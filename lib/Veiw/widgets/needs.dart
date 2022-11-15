import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/theme%20app.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../Controller/needs_controller.dart';
import '../../validation.dart';
import 'alert.dart';
import 'button.dart';
import 'date_field.dart';
import 'dropdown_list_widget.dart';
import 'text_field.dart';
import 'text_widget.dart';

NeedsController controller =
    Get.put<NeedsController>(NeedsController(), tag: "data", permanent: true);

class Needs extends StatelessWidget {
  const Needs({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
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
                  validator: () {},
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
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
                dropdownListWidget(
                  dropdownvalue: controller.dropdownvalue,
                  items: controller.items,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    TextWidget(
                      text: 'اختار التاريخ ',
                      color: ThemeApp.darkGreen,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                DateField(
                  controller: controller.controllerDate.value,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ToggleWidget(),
                    TextWidget(
                      text: 'احتساب الالتزام كل شهر ',
                      color: ThemeApp.darkGreen,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                    Obx(() {
                      return FlutterSwitch(
                        width: 40.0,
                        height: 25.0,
                        toggleSize: 20.0,
                        borderRadius: 20.0,
                        padding: 1.0,
                        showOnOff: false,
                        activeColor: ThemeApp.darkGreen,
                        inactiveColor: ThemeApp.whiteGray,
                        value: controller.toggleValue.value,
                        onToggle: (bool value) {
                          controller.toggleValue.value = value;
                        },
                      );
                    }),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 50,
                ),
                ButtonWidget(
                    text: 'اضافة العمليه ',
                    onPressed: () {
                      if (!RegExp(validation_number)
                          .hasMatch(controller.controllerMoney.value.text)) {
                        showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => Alert(
                                  text: 'القيمة المدخلة خاطئة',
                                  color: ThemeApp.darkOrange,
                                  icon: Icons.info,
                                ));
                      } else {
                        showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => Alert(
                                  text: 'تمت الاضافه بنجاح',
                                  color: ThemeApp.darkGreen,
                                  icon: Icons.check_circle,
                                ));
                      }
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
