import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/modules/Screens/LogIn.dart';

class Splah extends StatelessWidget {
  const Splah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image.asset('assets/images/success.png',
            alignment: Alignment.center, fit: BoxFit.cover),
        gradientBackground: const LinearGradient(colors: [
          Colors.deepOrangeAccent,
          Colors.orangeAccent,
        ]),
        logoWidth: 200,
        showLoader: false,
        durationInSeconds: 2,
        navigator: const LogInScreen(),
        title: Text(
          'Register Success',
          textAlign: TextAlign.center,
          style: GoogleFonts.robotoSlab(
            color: Colors.white,
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
