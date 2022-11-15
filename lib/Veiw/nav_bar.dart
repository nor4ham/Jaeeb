import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/controller.dart';
import '../theme app.dart';
import 'goals_veiw.dart';
import 'home_veiw.dart';
import 'transaction_veiw.dart';
import 'setting_veiw.dart';
import 'widgets/text_widget.dart';
Controller controller = Get.find(tag: "data");

class NavBar extends StatelessWidget {
  NavBar({super.key});

  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:Obx(()=> Container(
        color:controller.isDarkMode.value ? ThemeApp.isDarkModeMian : null,
        padding: EdgeInsets.all(20),
        child: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {},
            children: <Widget>[
              Home(),
              Goals(isDarkMode: controller.isDarkMode.value,),
              Transaction(),
              Setting(),
            ],
          ),
        ),
      )),
      bottomNavigationBar:Obx((() => BottomNavyBar(
          backgroundColor:
              controller.isDarkMode.value ? ThemeApp.isDarkModeMian : null,
          selectedIndex: controller.currentIndex.value,
          onItemSelected: (index) {
              controller.currentIndex.value = index;
              _pageController.jumpToPage(index);
          
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                activeColor: ThemeApp.green,
                title: TextWidget(
                  text: 'الرئسية',
                  color: ThemeApp.darkGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                icon: const Icon(
                  Icons.home,
                  color: ThemeApp.darkGreen,
                )),
            BottomNavyBarItem(
                activeColor: ThemeApp.green,
                title: TextWidget(
                  text: 'مدخراتي ',
                  color: ThemeApp.darkGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                icon: const Icon(
                  Icons.currency_exchange,
                  color: ThemeApp.darkGreen,
                )),
            BottomNavyBarItem(
                activeColor: ThemeApp.green,
                title: TextWidget(
                  text: 'اضافه عمليات  ',
                  color: ThemeApp.darkGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                icon: const Icon(
                  Icons.add_circle_outline,
                  color: ThemeApp.darkGreen,
                )),
            BottomNavyBarItem(
                activeColor: ThemeApp.green,
                title: TextWidget(
                  text: 'اعدادات ',
                  color: ThemeApp.darkGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                icon: const Icon(
                  Icons.settings,
                  color: ThemeApp.darkGreen,
                )),
          ],
        ) ),
    )));
  }
}
