import 'package:get/get.dart';
import 'Veiw/all_transaction_veiw.dart';
import 'Veiw/goals_veiw.dart';
import 'Veiw/home_veiw.dart';
import 'Veiw/income_veiw.dart';
import 'Veiw/nav_bar.dart';
import 'Veiw/splash.dart';
import 'Veiw/transaction_veiw.dart';
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
        name: '/income',
        page: () => Income(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        binding: Binding(),
      ),
      GetPage(
        name: '/splash',
        page: () => Splash(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/goals',
        page: () => Goals(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
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
      GetPage(
        name: '/AllTransactions',
        page: () => AllTransactions(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        binding: Binding(),
      ),
    ];
