import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/theme%20app.dart';
import '../Controller/controller_login.dart';
import 'widgets/button.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'widgets/text_field.dart';
import 'widgets/text_widget.dart';

class Login extends StatelessWidget {
  Login({super.key});
  ControllerLogin controller = Get.find(tag: "data");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
                    text: 'الرقم  ',
                    color: ThemeApp.darkGreen,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldWidget(
                    controller: controller.controllerNumber.value,
                    hintText: '٠٥٣٢٢٨٤١٠١',
                    validator: () {},
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  ButtonWidget(
                    text: 'تسجيل الدخول ',
                    onPressed: () {
                      Get.toNamed("/income");
                    },
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(height: 3,width: MediaQuery.of(context).size.width*0.41, child: Container(color: ThemeApp.whiteGray,)),
                      TextWidget(text: 'او', color:ThemeApp.darkGreen, fontSize: 24, fontWeight: FontWeight.w700),
                      SizedBox(height: 3,width: MediaQuery.of(context).size.width*0.41,child: Container(color: ThemeApp.whiteGray,)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SocialLoginButton(
                    buttonType: SocialLoginButtonType.appleBlack,
                    text: 'Apple',
                    onPressed: () {},
                    ),
                  const SizedBox(height: 10),
                  SocialLoginButton(
                    text: 'Google',
                    buttonType: SocialLoginButtonType.google,
                    onPressed: () {},
                    ),
                  const SizedBox(height: 10),
                  SocialLoginButton(
                    text: 'Facebook',
                    buttonType: SocialLoginButtonType.facebook,
                    onPressed: () {},
                    ),
                  const SizedBox(height: 10),
                  SocialLoginButton(
                    text: 'Github',
                    buttonType: SocialLoginButtonType.github,
                    onPressed: () {},
                    ),
                  const SizedBox(height: 10),
                  SocialLoginButton(
                    text: 'Microsoft',
                    buttonType: SocialLoginButtonType.microsoft,
                    onPressed: () {},
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
