import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/theme%20app.dart';

import '../Controller/controller.dart';
import 'widgets/button.dart';
import 'widgets/text_field.dart';
import 'widgets/text_widget.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});
  Controller controller = Get.find(tag: "data");
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
                      text: 'نسيت كلمة المرور',
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
                  text: 'البريد الالكتروني ',
                  color: ThemeApp.darkGreen,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  controller: controller.controllerIncome.value,
                  hintText: 'altamiminourahcs@gmail.com',
                  validator: () {},
                ),
                const SizedBox(height: 30,),
                ButtonWidget(
                  text: 'ارسل',
                  onPressed: () {
                    Get.toNamed("/login");
                    print(controller.controllerDate.value.text);
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
