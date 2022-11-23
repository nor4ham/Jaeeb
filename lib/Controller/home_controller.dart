import 'package:get/get.dart';
class HomeController extends GetxController {

  List<GDPData> GetChartData(double ?income,double ?expenses,double ?needs,double ?saving) {
    final List<GDPData> chartData = [
      GDPData("الدخل", income!),
      GDPData("المصروفات", expenses!),
      GDPData("الادخار", needs!),
      GDPData("الالتزامات", saving!),
    ];
    return chartData;
  }
    @override
  void onInit() {
    super.onInit();
    print("onInit");
  }
}
class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final double gdp;
}

