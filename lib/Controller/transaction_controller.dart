// ignore_for_file: non_constant_identifier_names, avoid_print ,prefer_interpolation_to_compose_strings, unnecessary_new, camel_case_types, prefer_const_constructors
import 'package:get/get.dart';
import 'package:jaeeb/theme%20app.dart';
import '../Veiw/widgets/expenses.dart';
import '../Veiw/widgets/extra_income.dart';
import '../Veiw/widgets/needs.dart';

class TransactionController extends GetxController {
  final index = 0.obs;
  var Transactions = [Needs(), Expenses(), ExtraIncome()];
  final colorButtonNeeds = ThemeApp.gray.obs;
  final colorButtonExpenses = ThemeApp.gray.obs;
  final colorButtonExtraIncome = ThemeApp.gray.obs;
  final colorButtonNeedsLine = ThemeApp.gray.withOpacity(0.0).obs;
  final colorButtonExpensesLine = ThemeApp.gray.withOpacity(0.0).obs;
  final colorButtonExtraIncomeLine = ThemeApp.gray.withOpacity(0.0).obs;
  void isNeeds() {
    index.value = 0;
    colorButtonNeeds.value = ThemeApp.darkGreen;
    colorButtonNeedsLine.value= ThemeApp.darkGreen;
    colorButtonExpenses.value=ThemeApp.gray;
    colorButtonExpensesLine.value=ThemeApp.gray.withOpacity(0.0);
    colorButtonExtraIncome.value=ThemeApp.gray;
    colorButtonExtraIncomeLine.value=ThemeApp.gray.withOpacity(0.0);
  }

  void isExpenses() {
    index.value = 1;
    colorButtonNeeds.value = ThemeApp.gray;
    colorButtonNeedsLine.value= ThemeApp.gray.withOpacity(0.0);
    colorButtonExpenses.value=ThemeApp.darkGreen;
    colorButtonExpensesLine.value=ThemeApp.darkGreen;
    colorButtonExtraIncome.value=ThemeApp.gray;
    colorButtonExtraIncomeLine.value=ThemeApp.gray.withOpacity(0.0);

  }

  void isExtraIncome() {
    index.value = 2;
    colorButtonNeeds.value = ThemeApp.gray;
    colorButtonNeedsLine.value= ThemeApp.gray.withOpacity(0.0);
    colorButtonExpenses.value=ThemeApp.gray;
    colorButtonExpensesLine.value=ThemeApp.gray.withOpacity(0.0);
    colorButtonExtraIncome.value=ThemeApp.darkGreen;
    colorButtonExtraIncomeLine.value=ThemeApp.darkGreen;

      }

  @override
  void onInit() {
    super.onInit();
    print("onInit");
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady");
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }
}
