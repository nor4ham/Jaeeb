import 'package:get/get.dart';

import 'Veiw/home_veiw.dart';
import 'Veiw/nav_bar.dart';
import 'Veiw/transaction_veiw.dart';
import 'Veiw/widgets/needs.dart';
import 'binding.dart';

appRoutes() => [
      GetPage(
        name: '/',
        page: () => NavBar(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        binding: Binding(),
      ),
      GetPage(
        name: '/home',
        page: () => Home(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        binding: Binding(),
      ),
      GetPage(
        name: '/Transaction',
        page: () => Transaction(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        binding: Binding(),
      ),
    ];
