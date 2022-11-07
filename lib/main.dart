import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'جيب',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      defaultTransition: Transition.fade,
      getPages: appRoutes(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
