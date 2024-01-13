import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/modules/Screens/ForgotPassword-Screen.dart';
import 'package:project/modules/Screens/Splash-Screen3.dart';

class ForgotPassword2 extends StatefulWidget {
  const ForgotPassword2({super.key});

  @override
  State<ForgotPassword2> createState() => _ForgotPassword2State();
}

class _ForgotPassword2State extends State<ForgotPassword2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.deepOrangeAccent,
                Colors.orangeAccent,
              ]),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 115,
                ),
                Text(
                  "O T P",
                  style:
                      GoogleFonts.robotoSlab(color: Colors.white, fontSize: 70),
                )
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 300),
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SingleChildScrollView(
                  child: Form(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 140,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 64,
                              height: 68,
                              child: TextFormField(
                                style: const TextStyle(fontSize: 30),
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 5),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                obscureText: false,
                              ),
                            ),
                            SizedBox(
                              width: 64,
                              height: 68,
                              child: TextFormField(
                                style: const TextStyle(fontSize: 30),
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 5),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                obscureText: false,
                              ),
                            ),
                            SizedBox(
                              width: 64,
                              height: 68,
                              child: TextFormField(
                                style: const TextStyle(fontSize: 30),
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 5),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                obscureText: false,
                              ),
                            ),
                            SizedBox(
                              width: 64,
                              height: 68,
                              child: TextFormField(
                                style: const TextStyle(fontSize: 30),
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(width: 5),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                obscureText: false,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Resend Code After 1:36',
                          style: GoogleFonts.robotoSlab(
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 220,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const ForgotPassword(),
                                    ));
                              },
                              child: Container(
                                width: 180,
                                height: 50,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Colors.deepOrangeAccent,
                                    Colors.orangeAccent,
                                  ]),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Back",
                                    style: GoogleFonts.robotoSlab(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const Splah2(),
                                    ));
                              },
                              child: Container(
                                width: 180,
                                height: 50,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Colors.deepOrangeAccent,
                                    Colors.orangeAccent,
                                  ]),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Verify",
                                    style: GoogleFonts.robotoSlab(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
