// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/theme%20app.dart';

import '../../Controller/controller.dart';
import '../../Controller/expenses_controller.dart';
import '../../Model/jaeeb_calsses.dart';
import '../../validation.dart';
import 'alert.dart';
import 'button.dart';
import 'date_field.dart';
import 'text_field.dart';
import 'text_widget.dart';

ExpensesController controller = Get.put<ExpensesController>(ExpensesController(),
    tag: "data", permanent: true);
Controller operations =
    Get.put<Controller>(Controller(), tag: "data", permanent: true);

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
                hintText: 'المبلغ  ', validator: (){},
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
              DropdownButtonFormField(decoration: InputDecoration(enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: ThemeApp.whiteGray, width: 0.5))),value: controller.dropdownvalue.value,onChanged: (value) {controller.dropdownvalue.value = value!;},icon: const Visibility(visible: false, child: Icon(Icons.arrow_downward)),items: controller.items,),
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
                height: 75,
              ),
              ButtonWidget(
                text: 'اضافة العمليه ',
                onPressed: () {
                      if (!RegExp(validation_number).hasMatch(
                              controller.controllerMoney.value.text) ||
                          controller.controllerMoney.value.text == '' ||
                          controller.controllerDate.value.text == '') {
                        showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => Alert(
                                  text: 'القيمة المدخلة خاطئة',
                                  color: ThemeApp.darkOrange,
                                  icon: Icons.info,
                                ));
                      } else {
                        if (controller.dropdownvalue.value ==
                            'التسوق') {
                          controller.expenses.add(Expense(
                            double.parse(
                                  controller.controllerMoney.value.text),
                              Category(
                                  'التسوق', Icons.store),
                              DateTime.parse(
                                  controller.controllerDate.value.text),
                              ));
                          operations.operations.add(Expense(
                              double.parse(
                                  controller.controllerMoney.value.text),
                              Category(
                                 'التسوق', Icons.store),
                              DateTime.parse(
                                  controller.controllerDate.value.text),));
                        } 
                        else if (controller.dropdownvalue.value ==
                             'مطعم ') {
                          controller.expenses.add(Expense(
                            double.parse(
                                  controller.controllerMoney.value.text),
                              Category(
                                   'مطعم ', Icons.restaurant_menu),
                              DateTime.parse(
                                  controller.controllerDate.value.text),
                              ));
                          operations.operations.add(Expense(
                              double.parse(
                                  controller.controllerMoney.value.text),
                              Category(
                                  'مطعم ', Icons.restaurant_menu),
                              DateTime.parse(
                                  controller.controllerDate.value.text),));
                        }
                        else if (controller.dropdownvalue.value ==
                             'قهوة ') {
                          controller.expenses.add(Expense(
                            double.parse(
                                  controller.controllerMoney.value.text),
                              Category(
                                   'قهوة ', Icons.local_cafe),
                              DateTime.parse(
                                  controller.controllerDate.value.text),
                              ));
                          operations.operations.add(Expense(
                              double.parse(
                                  controller.controllerMoney.value.text),
                              Category(
                                 'قهوة ', Icons.local_cafe),
                              DateTime.parse(
                                  controller.controllerDate.value.text),));
                        } 
                        else if (controller.dropdownvalue.value ==
                             'اخر ') {
                          controller.expenses.add(Expense(
                            double.parse(
                                  controller.controllerMoney.value.text),
                              Category(
                                  'اخر ', Icons.add_circle),
                              DateTime.parse(
                                  controller.controllerDate.value.text),
                              ));
                          operations.operations.add(Expense(
                              double.parse(
                                  controller.controllerMoney.value.text),
                              Category(
                                 'اخر ', Icons.add_circle),
                              DateTime.parse(
                                  controller.controllerDate.value.text),));
                        } 
                        controller.total.value+=double.parse(controller.controllerMoney.value.text) ;
                        showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => Alert(
                                  text: 'تمت الاضافه بنجاح',
                                  color: ThemeApp.darkGreen,
                                  icon: Icons.check_circle,
                                ));
                                controller.controllerMoney.value.text = '';
                                controller.controllerDate.value.text = '';
                                controller.dropdownvalue.value =  'التسوق';
                      }
                    }
              ),
            ],
          ),
        ],
      ),
    );
  }
}
