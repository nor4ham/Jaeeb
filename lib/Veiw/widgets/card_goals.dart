import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/goals_controller.dart';
import '../../theme app.dart';
import 'text_widget.dart';
GoalsController controller = Get.find(tag: "data");

class CardGoals extends StatelessWidget {
  int index;
  final bool isDarkMode;
  double total;
  double part;
  CardGoals(
      {required this.isDarkMode,
      required this.index,
      required this.total,
      required this.part,
      super.key});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: ClipRRect(
        borderRadius: BorderRadius.circular(5.5),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            padding: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: ThemeApp.delete,
              borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.delete,
                        color: ThemeApp.white,
                        ),
                      TextWidget(
                        color: ThemeApp.white,
                        text: 'حذف', 
                        fontSize: 16, 
                        fontWeight: FontWeight.w400,
                        ),
                        ],
                        ),
                        ],
                        ),
                        ),
                        ),
                        ),
      onDismissed: (direction) {
        controller.goals.removeAt(index);
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: Card(
          color: isDarkMode ? ThemeApp.isDarkMode : ThemeApp.white,
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.hardEdge,
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
            height: MediaQuery.of(context).size.height * 0.17,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: controller.goals[index].name,
                          color: isDarkMode ? ThemeApp.white : ThemeApp.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'اجمالي المبلغ',
                          color: ThemeApp.gray,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        TextWidget(
                          text: 'مبلغ الاستقطاع',
                          color: ThemeApp.gray,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: controller.goals[index].total.toString(),
                          color: isDarkMode ? ThemeApp.white : ThemeApp.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        TextWidget(
                          text: controller.goals[index].money.toString(),
                          color: isDarkMode ? ThemeApp.white : ThemeApp.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: ThemeApp.darkGreen,
                            width: MediaQuery.of(context).size.width * total -
                                MediaQuery.of(context).size.width * 0.1,
                          ),
                          Container(
                            color: ThemeApp.green,
                            width: MediaQuery.of(context).size.width * part -
                                MediaQuery.of(context).size.width * 0.1,
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
