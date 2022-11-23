// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../Controller/controller.dart';
import '../Controller/controller_income.dart';
import '../Controller/expenses_controller.dart';
import '../Controller/extra_income_controller.dart';
import '../Controller/goals_controller.dart';
import '../Controller/home_controller.dart';
import '../Controller/needs_controller.dart';
import '../theme app.dart';
import 'widgets/home_card.dart';
import 'widgets/text_widget.dart';

class Home extends StatelessWidget {
  Home({super.key});
  HomeController controller = Get.find(tag: "data");
  Controller mode = Get.find(tag: "data");
  ControllerIncome income = Get.find(tag: "data");
  ExpensesController expenses = Get.find(tag: "data");
  NeedsController needs = Get.find(tag: "data");
  ExtraIncomeController extraIncome = Get.find(tag: "data");
  GoalsController saving = Get.find(tag: "data");
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextWidget(
              text: 'الرصيد الحالي',
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color:mode.isDarkMode.value?ThemeApp.whiteGray :ThemeApp.black,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          TextWidget(
            text:' هو '+income.currentIncome(income.incoms[0].income,needs.total.value,expenses.total.value,extraIncome.total.value,saving.total.value).toString() +' ريال ',
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color:mode.isDarkMode.value?ThemeApp.whiteGray :ThemeApp.black,
          ),
        ]),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration:BoxDecoration(
              color:mode.isDarkMode.value?ThemeApp.isDarkMode :ThemeApp.white,
              borderRadius: BorderRadius.all(
                Radius.circular(31),
              ),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(
                    color: mode.isDarkMode.value?ThemeApp.isDarkMode :ThemeApp.whiteGray,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(0, 0)),
                BoxShadow(
                    color: mode.isDarkMode.value?ThemeApp.isDarkMode :ThemeApp.whiteGray,
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
                    color: mode.isDarkMode.value?ThemeApp.whiteGray :ThemeApp.black,
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
                palette: const <Color>[
                  ThemeApp.darkGreen,
                  ThemeApp.darkOrange,
                  ThemeApp.green,
                  ThemeApp.orange,
                ],
                annotations: <CircularChartAnnotation>[
                  CircularChartAnnotation(
                    widget: Container(
                        child: TextWidget(
                      text: "الرسم البياني",
                      fontSize: 18,
                      color: mode.isDarkMode.value?ThemeApp.whiteGray :ThemeApp.black,
                      fontWeight: FontWeight.bold,
                    )),
                  )
                ],
                legend: Legend(
                    isVisible: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.bottom,
                    iconHeight: 40,
                    iconWidth: 15,
                    itemPadding: 20,
                    textStyle: GoogleFonts.ibmPlexSansArabic(fontSize: 15)),
                series: <CircularSeries>[
                  DoughnutSeries<GDPData, String>(
                      dataSource: controller.GetChartData(income.incoms[0].income,expenses.total.value,saving.total.value,needs.total.value),
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
              Get.toNamed("/AllTransactions");
            },
            child: TextWidget(
              decoration: TextDecoration.underline,
              text: "المزيد",
              color: mode.isDarkMode.value?ThemeApp.whiteGray :ThemeApp.black,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextWidget(
            text: "مجموع العمليات",
            color: mode.isDarkMode.value?ThemeApp.whiteGray :ThemeApp.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ]),
        CardHome(
          text: 'الدخل',
          money: income.incoms[0].income.toString(),
          icon: Icons.paid,
          color: ThemeApp.darkGreen, isDarkMode: mode.isDarkMode.value
        ),
        CardHome(
          text: 'المصروفات',
          money: expenses.total.value.toString(),
          color: ThemeApp.darkOrange,
          icon: Icons.shopping_cart,
          isDarkMode: mode.isDarkMode.value
        ),
        CardHome(
          text: 'الادخار',
          money: saving.total.value.toString(),
          color: ThemeApp.green,
          icon: Icons.savings,
          isDarkMode: mode.isDarkMode.value
        ),
        CardHome(
          text: 'الالتزمات',
          money: needs.total.value.toString(),
          color: ThemeApp.orange,
          icon: Icons.money,
          isDarkMode: mode.isDarkMode.value
        ),
      ]),
    );
  }
}
