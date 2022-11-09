// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../Controller/transaction_controller.dart';
import '../theme app.dart';
import 'widgets/text_widget.dart';

class Transaction extends StatelessWidget {
  Transaction({super.key});
  TransactionController controller = Get.find( tag: "data");
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        /*       const SizedBox(
                width: 40,
              ), */
              TextWidget(
                text: 'عملية',
                color: ThemeApp.darkGreen,
                fontWeight: FontWeight.w900,
                fontSize: 18,
              ),
       /*        SizedBox(
                width: 30,
                height: 30,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ThemeApp.darkGreen,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: ThemeApp.white,
                    size: 16,
                  ),
                  onPressed: () {},
                ),
              ), */
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Obx(() {
            return Container(
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: ThemeApp.whiteGray),
              )),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom:
                          BorderSide(
                            color:controller.colorButtonNeedsLine.value,
                            width:3
                            ),
                          )
                          ),
                    child: TextButton(
                      onPressed: () {
                        controller.isNeeds();
                      },
                      child: TextWidget(
                        text: '     الالتزامات     ',
                        color: controller.colorButtonNeeds.value,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom:
                          BorderSide(
                            color: controller.colorButtonExpensesLine.value,
                            width:3
                            ),
                            )
                            ),
                    child: TextButton(
                      onPressed: () {
                        controller.isExpenses();
                      },
                      child: TextWidget(
                        text: '    المصروفات    ',
                        color: controller.colorButtonExpenses.value,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom:
                          BorderSide(
                            color: controller.colorButtonExtraIncomeLine.value,
                            width:3
                            ),
                    )),
                    child: TextButton(
                      onPressed: () {
                        controller.isExtraIncome();
                      },
                      child: TextWidget(
                        text: '    دخل اضافي    ',
                        color: controller.colorButtonExtraIncome.value,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
          SizedBox(
            height: 35,
          ),
          Obx(() {
            return controller.Transactions[controller.index.value];
          })
        ],
      ),
    );
  }
}
