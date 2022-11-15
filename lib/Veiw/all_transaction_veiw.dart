// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../theme app.dart';
import 'widgets/list_transactions.dart';
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
  Stricture({super.key});
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
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    icon: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: ThemeApp.darkGreen,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: const Icon(
                        Icons.filter_list,
                        color: ThemeApp.white,
                        size: 16,
                      ),
                    ),
                    items: [
                      DropdownMenuItem(
                        value: 'الاحدث',
                        child: TextWidget(
                          text: 'الاحدث',
                          color: ThemeApp.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      DropdownMenuItem(
                        value: 'الاقدم',
                        child: TextWidget(
                          text: 'الاقدم',
                          color: ThemeApp.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                    },
                    buttonHeight: 50,
                    buttonWidth: 100,
                  ),
                )
                /*     SizedBox(
                  width: 30,
                  height: 30,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: ThemeApp.darkGreen,
                    ),
                    child: 
                DropdownButton(
                  iconEnabledColor:ThemeApp.darkGreen ,
                  iconDisabledColor: ThemeApp.darkGreen,
                  icon:Icon(Icons.filter_list,size: 16,),
                  onChanged: (value) {  },
                   items: [
                    DropdownMenuItem( value: 'الاحدث', child: TextWidget(text: 'الاحدث', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w400,),),
                    DropdownMenuItem(value: 'الاقدم', child: TextWidget(text: 'الاقدم', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w400,),),

                   ],),
                    onPressed: () {
                      
                    },
                  ),
                ),  */
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
