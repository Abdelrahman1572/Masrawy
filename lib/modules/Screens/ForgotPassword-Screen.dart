import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/modules/Screens/ForgotPassword2-Screen.dart';
import 'package:project/modules/Screens/LogIn.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController ___phoneController = TextEditingController();
  final GlobalKey<FormState> ___formKey = GlobalKey();

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
                const SizedBox(height: 160,),
                Text(
                  "Forgot Password",
                  style:
                      GoogleFonts.robotoSlab(color: Colors.white, fontSize: 45),
                )
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 350),
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: ___formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 150,
                        ),
                        TextFormField(
                          controller: ___phoneController,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(width: 5),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            labelText: "Phone",
                            labelStyle: const TextStyle(fontSize: 25),
                            hintText: "Enter your Phone Number",
                            hintStyle: const TextStyle(fontSize: 15),
                            prefixIcon: const Icon(
                              Icons.local_phone_outlined,
                              color: Colors.orange,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          obscureText: false,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Your Phone";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height:200,),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const LogInScreen(),
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
                          const SizedBox(width: 25,),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const ForgotPassword2(),
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
                                    "Continue",
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
