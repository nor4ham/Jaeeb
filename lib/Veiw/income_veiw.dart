import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/theme%20app.dart';
import '../Controller/controller_income.dart';
import '../Model/jaeeb_calsses.dart';
import '../validation.dart';
import 'widgets/alert.dart';
import 'widgets/button.dart';
import 'widgets/date_field.dart';
import 'widgets/text_field.dart';
import 'widgets/text_widget.dart';

class Income extends StatelessWidget {
  Income({super.key});
  ControllerIncome controller = Get.find(tag: "data");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: 'مرحبا بك',
                      color: ThemeApp.darkGreen,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextWidget(
                  text: 'الاسم  ',
                  color: ThemeApp.darkGreen,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  hintText: 'هدية',
                  controller: controller.controllerName.value,
                  validator: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                TextWidget(
                  text: 'الراتب الشهري ',
                  color: ThemeApp.darkGreen,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  controller: controller.controllerIncome.value,
                  hintText: '١٠٠٠ ريال',
                  validator: () {},
                ),
                const SizedBox(
                  height: 10,
                ),
                TextWidget(
                  text: 'يوم الراتب ',
                  color: ThemeApp.darkGreen,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 10,
                ),
                DateField(
                  controller: controller.controllerDate.value,
                ),
                const SizedBox(
                  height: 70,
                ),
                ButtonWidget(
                  text: 'التالي',
                  onPressed: () {
                    if (!RegExp(validation_number)
                            .hasMatch(controller.controllerIncome.value.text) ||
                        controller.controllerName.value.text == '' ||
                        controller.controllerDate.value.text == '') {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => Alert(
                                text: 'القيمة المدخلة خاطئة',
                                color: ThemeApp.darkOrange,
                                icon: Icons.info,
                              ));
                    } else {
                      Get.toNamed("/");
                      controller.incoms.add(Incomes(double.parse(controller.controllerIncome.value.text),controller.controllerName.value.text,DateTime.parse(controller.controllerDate.value.text)));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
