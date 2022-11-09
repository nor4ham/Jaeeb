import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../theme app.dart';
import 'home_veiw.dart';
import 'transaction_veiw.dart';
import 'widgets/text_widget.dart';

class NavBar extends StatefulWidget {
  NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  PageController _pageController = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {},
            children: <Widget>[
              Home(),
              Container(
                color: ThemeApp.orange,
              ),
              Transaction(),
              Container(
                color: ThemeApp.orange,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
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
      ),
    ));
  }
}
