// ignore_for_file: unnecessary_new
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../Model/jaeeb_calsses.dart';
import '../Veiw/widgets/alert.dart';
import '../Veiw/widgets/button.dart';
import '../Veiw/widgets/text_field.dart';
import '../Veiw/widgets/text_widget.dart';
import '../theme app.dart';
import '../validation.dart';
import 'controller.dart';

class GoalsController extends GetxController {
  Controller mode = Get.find(tag: "data");
  Rx<TextEditingController> controllerName = TextEditingController().obs;
  Rx<TextEditingController> controllerTotal = TextEditingController().obs;
  Rx<TextEditingController> controllerMoney = TextEditingController().obs;
  var goals = [].obs;
  var total = 0.0.obs;
  var ratio1 = 1.0.obs;
  var ratio2 = 0.0.obs;

  void settingModalBottomSheet(dynamic context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        elevation: 70,
        isDismissible: true,
        backgroundColor:
            mode.isDarkMode.value ? ThemeApp.isDarkMode : ThemeApp.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        )),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Form(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: (MediaQuery.of(context).size.width),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 100, top: 50),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextWidget(
                                      color: ThemeApp.darkGreen,
                                      text: 'إدخار جديد',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ]),
                              const SizedBox(height: 50),
                              Row(children: [
                                TextWidget(
                                  color: ThemeApp.darkGreen,
                                  text: 'ادخر من اجل ',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ]),
                              const SizedBox(height: 13),
                              TextFieldWidget(
                                hintText: 'سياره',
                                controller: controllerName.value,
                                validator: () {},
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(children: [
                                TextWidget(
                                  color: ThemeApp.darkGreen,
                                  text: 'المبلغ الاجمالي ',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ]),
                              const SizedBox(height: 13),
                              TextFieldWidget(
                                hintText: '٢٠٠٠٠٠ ريال',
                                controller: controllerTotal.value,
                                validator: () {},
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  TextWidget(
                                    color: ThemeApp.darkGreen,
                                    text: 'مبلغ الاستقطاع الشهري ',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 13),
                              TextFieldWidget(
                                hintText: '٢٠٠٠ ريال',
                                controller: controllerMoney.value,
                                validator: () {},
                              ),
                              const SizedBox(height: 80),
                              ButtonWidget(
                                text: 'اضافة',
                                onPressed: () {
                                  if (!RegExp(validation_number).hasMatch(
                                          controllerMoney.value.text) ||
                                      !RegExp(validation_number).hasMatch(
                                          controllerTotal.value.text) ||
                                      controllerName.value.text == '') {
                                    showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            Alert(
                                              text: 'القيمة المدخلة خاطئة',
                                              color: ThemeApp.darkOrange,
                                              icon: Icons.info,
                                            ));
                                  } else {
                                    Navigator.pop(context);
                                    goals.add(Saving(
                                        controllerName.value.text,
                                        double.parse(
                                            controllerMoney.value.text),
                                        double.parse(
                                            controllerTotal.value.text)));
                                    total.value += double.parse(
                                        controllerMoney.value.text);
                                    controllerName.value.text = '';
                                    controllerMoney.value.text = '';
                                    controllerTotal.value.text = '';
                                  }
                                },
                              )
                            ]),
                      )),
                ),
              ),
            ),
          );
        });
  }
}
