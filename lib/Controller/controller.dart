// ignore_for_file: non_constant_identifier_names, avoid_print ,prefer_interpolation_to_compose_strings, unnecessary_new, camel_case_types, prefer_const_constructors


import 'package:get/get.dart';

class Controller extends GetxController {
  final income = 0.0.obs;
  void onchangedIncome(double num) {
    income.value = num;
    print("onchanged Income" + income.value.toString());
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

