import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/modules/Screens/LogIn.dart';


class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}
class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepOrangeAccent,
            Colors.orangeAccent,
          ]),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
              Text(
              'M a s r a w y',
              textAlign: TextAlign.center,
             style: GoogleFonts.robotoSlab(fontSize: 60,color: Colors.white),
            ),
            const SizedBox(height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('The Best Online Store In Egypt',
                  style: GoogleFonts.robotoSlab(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Image(
                image: AssetImage('assets/images/splash_2.png'),
                width: 340,
                height: 340,
            ),
            const SizedBox(
              height: 50,
            ),
            Text('Make Shopping Faster and Easier',
              style: GoogleFonts.robotoSlab(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
            ),
                const SizedBox(height: 100,),
            InkWell(
              onTap:() {
               Navigator.pushReplacement(
                   context,
                   MaterialPageRoute(builder: (_) => const LogInScreen(),));
              },
              child: Container(
                width: 380,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white,
                    width: 6,
                  ),
                ),
                child: Center(
                  child: Text(
                      "Continue",
                      style: GoogleFonts.robotoSlab(
                          fontSize: 26 ,
                          color: Colors.black ,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
