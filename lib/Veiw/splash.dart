import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jaeeb/Veiw/widgets/expenses.dart';
import 'package:jaeeb/theme%20app.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1600), () {});
    Get.toNamed("/income");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: (const MyPhoto()),
          ),
        ],
      ),
    ));
  }
}

class MyPhoto extends StatelessWidget {
  const MyPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    AssetImage assetImage = const AssetImage("images/jaeeb.png");
    Image image = Image(image: assetImage,fit:BoxFit.fill  );
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: ThemeApp.white,
      child: Center(
        child: Container(
          height: 200,
          width: 250,
          child: image,
        ),
      )
    );
  }
}
