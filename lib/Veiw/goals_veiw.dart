import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/goals_controller.dart';
import '../theme app.dart';
import 'widgets/list_goals.dart';
import 'widgets/text_widget.dart';

class Goals extends StatelessWidget {
  Goals({super.key});
  GoalsController controller = Get.find(tag: "data");
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 30,
                ),
                TextWidget(
                  text: 'مدخراتي',
                  color: ThemeApp.darkGreen,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: ThemeApp.darkGreen,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: ThemeApp.white,
                      size: 16,
                    ),
                    onPressed: () {
                      controller.settingModalBottomSheet(context);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            ListViewOfGoals(),
          ],
        ),
      ),
    );
  }
}
