// ignore_for_file: unnecessary_this, prefer_initializing_formals

import 'package:flutter/material.dart';

class Operations {
  double? cost;
  Category? category;
  DateTime? date;
  Operations(double? cost, Category? category, DateTime? date) {
    this.cost = cost;
    this.category = category;
    this.date = date;
  }
}

class Need extends Operations {
  bool? isEveryMonth;
  Need(super.cost, super.category, super.date, bool? isEveryMonth) {
    this.isEveryMonth = isEveryMonth;
  }
}

class Expense extends Operations {
  Expense(super.cost, super.category, super.date);
}

class ExtraIncom extends Operations {
  bool? isEveryMonth;
  ExtraIncom(super.cost, super.category, super.date, bool? isEveryMonth) {
    this.isEveryMonth = isEveryMonth;
  }
}

class Category {
  String? name;
  IconData? icon;
  Category(String name, IconData? icon) {
    this.name = name;
    this.icon = icon;
  }
}

class Saving {
  String? name;
  double? money;
  double? total;
  double? ratio1;
  double? ratio2;
  Saving(String? name, double? money, double? total) {
    this.name = name;
    this.money = money;
    this.total = total;
    ratio1=(money!*100/total!)/100;
    ratio2=1-ratio1!;
  }
}

class Incomes {
  double? income;
  String? name;
  DateTime? date;
  Incomes(double? income, String? name, DateTime? date) {
    this.income = income;
    this.name = name;
    this.date = date;
  }
  double CurrentIncome = 0;
  double currentIncome() {
    CurrentIncome += 0;
    return income! - CurrentIncome;
  }
}
