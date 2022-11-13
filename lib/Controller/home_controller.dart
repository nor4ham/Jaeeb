import 'package:get/get.dart';
class HomeController extends GetxController {

  List<GDPData> ? chartData;
  List<GDPData> GetChartData() {
    final List<GDPData> chartData = [
      GDPData("الدخل", 600),
      GDPData("المصروفات", 300),
      GDPData("الادخار", 200),
      GDPData("الالتزامات", 200),
    ];
    return chartData;
  }
    @override
  void onInit() {
    chartData = GetChartData();
    super.onInit();
    print("onInit");
  }
}
class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final double gdp;
}

