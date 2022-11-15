import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jaeeb/routes.dart';
import 'package:jaeeb/theme%20app.dart';

void main() async{
  await GetStorage.init();  
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
      initialRoute: '/login',
      defaultTransition: Transition.zoom,
      getPages: appRoutes(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
