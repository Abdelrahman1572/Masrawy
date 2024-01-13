import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/modules/Screens/HomePage.dart';

class SplahLogIn extends StatelessWidget {
  const SplahLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image.asset('assets/images/success.png',alignment: Alignment.center, fit: BoxFit.cover), 
        gradientBackground: const LinearGradient(colors: [ Colors.deepOrangeAccent, Colors.orangeAccent,]),
        logoWidth: 200,
        showLoader: false,
        durationInSeconds: 2,
        navigator: const HomeScreen(),
        title: Text(
          'LogIn Success',
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
