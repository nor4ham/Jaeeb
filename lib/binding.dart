import 'package:get/get.dart';

import 'Controller/controller.dart';
import 'Controller/controller_income.dart';
import 'Controller/controller_login.dart';
import 'Controller/expenses_controller.dart';
import 'Controller/extra_income_controller.dart';
import 'Controller/goals_controller.dart';
import 'Controller/home_controller.dart';
import 'Controller/needs_controller.dart';
import 'Controller/transaction_controller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put<Controller>(Controller(),tag: "data", permanent: true);
    Get.put<TransactionController>(TransactionController(),tag: "data", permanent: true);
    Get.put<HomeController>(HomeController(), tag: "data", permanent: true);
    Get.put<ControllerLogin>(ControllerLogin(), tag: "data", permanent: true);
    Get.put<ControllerIncome>(ControllerIncome(), tag: "data", permanent: true);
    Get.put<NeedsController>(NeedsController(), tag: "data", permanent: true);
    Get.put<GoalsController>(GoalsController(),tag: "data", permanent: true);
    Get.put<ExpensesController>(ExpensesController(),tag: "data", permanent: true);
    Get.put<ExtraIncomeController>(ExtraIncomeController(),tag: "data", permanent: true);

  }
}
