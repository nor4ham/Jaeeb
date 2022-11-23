import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/controller.dart';
import '../../theme app.dart';
import 'text_widget.dart';
  Controller operations =Get.put<Controller>(Controller(), tag: "data", permanent: true);

class ListViewOfTransactions extends StatelessWidget {
  ListViewOfTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: operations.operations.length /* controller.expenses.length */,
      itemBuilder: (context, index) {
        return CardTransaction(
          index: index,
        );
      },
    );
  }
}

class CardTransaction extends StatelessWidget {
  int index;
  CardTransaction({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
        height: MediaQuery.of(context).size.height * 0.0893,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                 operations.operations[index].category.icon,
                  size: 47,
                  color: ThemeApp.darkGreen,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(
                      text: operations.operations[index].category.name,
                      color: ThemeApp.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                    TextWidget(
                      text: operations.operations[index].date.day.toString() +
                          "-" +
                          operations.operations[index].date.month.toString()+
                          "-" +
                          operations.operations[index].date.year.toString(),
                      color: ThemeApp.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextWidget(
                  text:operations.operations[index].cost.toString() + " ريال",
                  color: ThemeApp.darkOrange,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
