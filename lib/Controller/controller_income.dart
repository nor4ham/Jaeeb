// ignore_for_file: non_constant_identifier_names, avoid_print ,prefer_interpolation_to_compose_strings, unnecessary_new, camel_case_types, prefer_const_constructors

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ControllerIncome extends GetxController {
  Rx<TextEditingController> controllerName = TextEditingController().obs;
  Rx<TextEditingController> controllerIncome = TextEditingController().obs;
  Rx<TextEditingController> controllerDate = TextEditingController().obs;
  var incoms = [].obs;
  double currentIncome(double income ,double needs,double expenses,double extraIncome ,double saving) {
    return income+extraIncome-needs-expenses-saving;
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
