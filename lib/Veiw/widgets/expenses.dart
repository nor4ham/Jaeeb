import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/theme%20app.dart';

import '../../Controller/expenses_controller.dart';
import 'button.dart';
import 'date_field.dart';
import 'dropdown_list_widget.dart';
import 'text_field.dart';
import 'text_widget.dart';

ExpensesController controller = Get.put<ExpensesController>(ExpensesController(),
    tag: "data", permanent: true);

class Expenses extends StatelessWidget {
  const Expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
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
                  print("controllerDate " +
                      controller.controllerMoney.value.text);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
