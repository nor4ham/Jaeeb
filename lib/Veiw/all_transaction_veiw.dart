// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme app.dart';
import 'widgets/list.dart';
import 'widgets/text_widget.dart';

class AllTransactions extends StatelessWidget {
  const AllTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stricture(),
        ),
      ),
    );
  }
}

class Stricture extends StatelessWidget {
  const Stricture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15, 50, 15, 50),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: ThemeApp.darkGreen,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: ThemeApp.white,
                      size: 16,
                    ),
                    onPressed: () {
                      Get.toNamed("/");
                    },
                  ),
                ),
                TextWidget(
                  text: 'عملية',
                  color: ThemeApp.darkGreen,
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
                const SizedBox(
                  width: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ListViewOfTransactions(),
          ],
        ),
      ),
    );
  }
}
