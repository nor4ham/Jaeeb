// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/controller.dart';
import '../theme app.dart';
import 'widgets/text_widget.dart';

class Setting extends StatelessWidget {
  Controller controller = Get.find(tag: "data");
  Setting({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Icon(
              Icons.account_circle,
              size: 150,
              color: ThemeApp.darkGreen,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: 'محمد ',
              color:controller.isDarkMode.value? ThemeApp.whiteGray:ThemeApp.black,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        icons(
          text: "معلومات الحساب",
          icon: Icons.person,
         isDarkMode: controller.isDarkMode.value,
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
            height: 3,
            child: Container(
              color: ThemeApp.whiteGray,
            )),
        const SizedBox(
          height: 15,
        ),
        icons(text: "الاعدادات", icon: Icons.settings, isDarkMode: controller.isDarkMode.value,),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
            height: 3,
            child: Container(
              color: ThemeApp.whiteGray,
            )),
        const SizedBox(
          height: 15,
        ),
        icons(
          text: "التواصل",
          icon: Icons.connect_without_contact,
          isDarkMode: controller.isDarkMode.value,
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
            height: 3,
            child: Container(
              color: ThemeApp.whiteGray,
            )),
        const SizedBox(
          height: 15,
        ),
        icons(text: "مركز المساعدة", icon: Icons.help, isDarkMode: controller.isDarkMode.value,),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
            height: 3,
            child: Container(
              color: ThemeApp.whiteGray,
            )),
        const SizedBox(
          height: 15,
        ),
        icons(text: "English", icon: Icons.language, isDarkMode: controller.isDarkMode.value,),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
            height: 3,
            child: Container(
              color: ThemeApp.whiteGray,
            )),
        const SizedBox(
          height: 15,
        ),
        Obx(() {
          return IconButton(
            icon: icons(
              text: controller.isDarkMode.value ? "وضع النهار " : "وضع الداكن ",
              icon: controller.isDarkMode.value
                  ? Icons.light_mode
                  : Icons.dark_mode, 
                  isDarkMode: controller.isDarkMode.value,
            ),
            onPressed: () {
              controller.changeMode();
            },
          );
        }),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
            height: 3,
            child: Container(
              color: ThemeApp.whiteGray,
            )),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

class icons extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isDarkMode ;
  icons({required this.icon,required this.isDarkMode, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          Icon(
            icon,
            color: ThemeApp.darkGreen,
          ),
          const SizedBox(
            width: 15,
          ),
          TextWidget(
              text: text,
              color: isDarkMode? ThemeApp.whiteGray:ThemeApp.black,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ],
      ),
    );
  }
}
