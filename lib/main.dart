import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jaeeb/routes.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'جيب',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      defaultTransition: Transition.zoom,
      getPages: appRoutes(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
