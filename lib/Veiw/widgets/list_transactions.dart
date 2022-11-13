import 'package:flutter/material.dart';

import '../../theme app.dart';
import 'text_widget.dart';

class ListViewOfTransactions extends StatelessWidget {
  ListViewOfTransactions({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 2 /* controller.expenses.length */,
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
                  Icons.add,
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
                      text: 'كلام ',
                      color: ThemeApp.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                    TextWidget(
                      text: 22.toString() +
                          "-" +
                          22.toString() +
                          "-" +
                          2222.toString(),
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
                  text: 22.toString() + " ريال",
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
