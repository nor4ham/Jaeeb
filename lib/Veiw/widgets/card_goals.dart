import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../theme app.dart';
import 'text_widget.dart';
class CardGoals extends StatelessWidget {
  int index;
  CardGoals({required this.index, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        clipBehavior: Clip.hardEdge,
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
          height: MediaQuery.of(context).size.height * 0.17,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, 
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [TextWidget(text: 'سياره', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w900,),],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(text: 'اجمالي المبلغ', color: ThemeApp.gray, fontSize: 14, fontWeight: FontWeight.w400,),
                    TextWidget(text: 'مبلغ الاستقطاع', color: ThemeApp.gray, fontSize: 14, fontWeight: FontWeight.w400,),
                    ],
                  ),
                const SizedBox(height: 5,),  
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    TextWidget(text: '٣٠٠٠٠', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w400,),
                    TextWidget(text: '١٠٠٠', color: ThemeApp.black, fontSize: 14, fontWeight: FontWeight.w400,)
                    ],
                    ),
                const SizedBox(height: 15,),  
                SizedBox(
                  height: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: ThemeApp.darkGreen,
                        width: MediaQuery.of(context).size.width*0.5-MediaQuery.of(context).size.width*0.1,
                        ),
                      Container(
                        color: ThemeApp.green,
                        width:MediaQuery.of(context).size.width*0.5-MediaQuery.of(context).size.width*0.1,
                        ),
                    ],
                  ),
                )   
              ]
              ),
          ),
        ),
      ),
    );
  }
}
