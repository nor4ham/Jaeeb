// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'card_goals.dart';
class ListViewOfGoals extends StatelessWidget {
  ListViewOfGoals({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 4 /* controller.expenses.length */,
      itemBuilder: (context, index) {
        return CardGoals(
          index: index,
        );
      },
    );
  }
}

