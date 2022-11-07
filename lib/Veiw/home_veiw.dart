// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Controller/home_controller.dart';
import '../theme app.dart';
import 'widgets/home_card.dart';
import 'widgets/text.dart';

class Home extends StatelessWidget {
  Home({super.key});
  HomeController controller = Get.find(tag: "data");
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextWidget(
              text: 'الرصيد الحالي',
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: ThemeApp.black,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          TextWidget(
            text: '١٠٠٠ ريال',
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: ThemeApp.black,
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: const BoxDecoration(
              color: ThemeApp.white,
              borderRadius: BorderRadius.all(
                Radius.circular(31),
              ),
              boxShadow: [
                BoxShadow(
                    color: ThemeApp.whiteGray,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(0, 0)),
                BoxShadow(
                    color: ThemeApp.whiteGray,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(1, 1))
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    "https://i.ibb.co/H76y4Zd/Vector210.png",
                    height: 50,
                    width: 40,
                  ),
                  TextWidget(
                    text: 'الشهر الحالي',
                    color: ThemeApp.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  Image.network(
                    "https://i.ibb.co/N60HQdj/Vector0.png",
                    height: 50,
                    width: 40,
                  ),
                ],
              ),
              SfCircularChart(
                palette: <Color>[
                  ThemeApp.darkGreen,
                  ThemeApp.green,
                  ThemeApp.orange,
                  ThemeApp.darkOrange
                ],
                annotations: <CircularChartAnnotation>[
                  CircularChartAnnotation(
                    widget: Container(
                        child: Text(
                      'الرسم \nالبياني',
                    )),
                  )
                ],
                legend: Legend(
                    isVisible: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.bottom,
                    iconHeight: 20,
                    iconWidth: 20,
                    itemPadding: 20,
                    textStyle: GoogleFonts.ibmPlexSansArabic(fontSize: 15)),
                series: <CircularSeries>[
                  DoughnutSeries<GDPData, String>(
                      dataSource: controller.chartData,
                      xValueMapper: (GDPData data, _) => data.continent,
                      yValueMapper: (GDPData data, _) => data.gdp,
                      radius: '80%',
                      innerRadius: '90%',
                      // ignore: prefer_const_constructors
                      dataLabelSettings: DataLabelSettings(
                          isVisible: true,
                          labelPosition: ChartDataLabelPosition.outside,
                          // ignore: prefer_const_constructors
                          connectorLineSettings:
                              ConnectorLineSettings(type: ConnectorType.curve)))
                ],
              ),
            ],
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: TextWidget(
              text: "المزيد",
              color: ThemeApp.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextWidget(
            text: "مجموع العمليات",
            color: ThemeApp.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ]),
        MyWidget(
            text: "الدخل",
            text2: "600",
            icons2: Icons.money_sharp,
            color23: ("#519872"),
            color1: ("#519872")),
        MyWidget(
            text: "المصروفات",
            text2: "600",
            icons2: Icons.money,
            color23: ("#EBA90D"),
            color1: ("#EBA90D")),
        MyWidget(
          text: "الادخار",
          text2: "6000",
          icons2: Icons.flag,
          color23: ("#519872"),
          color1: "#519872",
        ),
        MyWidget(
          text: "الادخار",
          text2: "6000",
          icons2: Icons.flag,
          color23: ("#519872"),
          color1: "#519872",
        ),
      ]),
    );
  }
}
