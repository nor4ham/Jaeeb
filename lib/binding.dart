import 'package:get/get.dart';

import 'Controller/home_controller.dart';
import 'Controller/transaction_controller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put<TransactionController>(TransactionController(),
        tag: "data", permanent: true);
    Get.put<HomeController>(HomeController(), tag: "data", permanent: true);
  }
}
