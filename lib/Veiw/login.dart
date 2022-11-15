import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/theme%20app.dart';

import '../Controller/controller.dart';
import 'widgets/button.dart';
import 'widgets/password_field.dart';
import 'widgets/text_field.dart';
import 'widgets/text_widget.dart';

class Login extends StatelessWidget {
  Login({super.key});
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
                      text: 'تسجيل الدخول',
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
                const SizedBox(
                  height: 10,
                ),
                 TextWidget(
                  text: 'الرقم السري  ',
                  color: ThemeApp.darkGreen,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 10,
                ),
                PasswordFieldWidget(
                  controller: controller.controllerDate.value,
                  hintText: 'fgg46893dw2',
                  validator: () {},
                ),
                const SizedBox(
                  height: 50,
                ),
                ButtonWidget(
                  text: 'تسجيل الدخول',
                  onPressed: () {
                    Get.toNamed("/");
                    print(controller.controllerDate.value.text);
                  },
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed("/ForgotPassword");
                    },
                  child: TextWidget(
                    decoration: TextDecoration.underline,
                    text: "نسيت كلمة السر",
                    color:ThemeApp.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed("/signUp");
                    },
                  child: TextWidget(
                    decoration: TextDecoration.underline,
                    text: "تسجيل جديد",
                    color:ThemeApp.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
