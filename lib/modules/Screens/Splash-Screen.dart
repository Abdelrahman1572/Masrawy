import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:project/modules/Screens/Onboard.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image.asset('assets/images/splash_1.png',alignment: Alignment.center,fit: BoxFit.cover),
          gradientBackground: const LinearGradient(colors: [
            Colors.deepOrangeAccent,
            Colors.orangeAccent,
          ]),
          logoWidth: 200,
          showLoader: false,
          durationInSeconds: 3,
          navigator: const Onboard(),
        ),
    );
  }
}
