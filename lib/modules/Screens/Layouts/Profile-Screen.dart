// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Controller/cubit/auth_cubit.dart';
import 'package:project/Controller/cubit/auth_state.dart';
import 'package:project/modules/Screens/LogIn.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 128,
                  ),
                  Text(
                      'Profile',
                      style: GoogleFonts.robotoSlab(fontSize: 50),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
              width: 50,
            ),
            const SizedBox(
              width: 150,
              height: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Profile Image.png'),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(208, 211, 212, 0.7),
                        // border: Border.all(width: 5,color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset(
                            'assets/icons/User Icon.svg',
                            color: Color(0xFFFF7643),
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            'My Account',
                            style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 173,
                          ),
                          SvgPicture.asset(
                            'assets/icons/arrow_right.svg',
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(208, 211, 212, 0.7),
                        // border: Border.all(width: 5,color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset(
                            'assets/icons/Bell.svg',
                            color: Color(0xFFFF7643),
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Notifications',
                            style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 170,
                          ),
                          SvgPicture.asset(
                            'assets/icons/arrow_right.svg',
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(208, 211, 212, 0.7),
                        // border: Border.all(width: 5,color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset(
                            'assets/icons/Settings.svg',
                            color: Color(0xFFFF7643),
                            width: 25,
                            height: 25,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Settings',
                            style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 210,
                          ),
                          SvgPicture.asset(
                            'assets/icons/arrow_right.svg',
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(208, 211, 212, 0.7),
                        // border: Border.all(width: 5,color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          SvgPicture.asset(
                            'assets/icons/Question mark.svg',
                            color: Color(0xFFFF7643),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Help Center',
                            style: GoogleFonts.robotoSlab(
                                fontSize: 20,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 178,
                          ),
                          SvgPicture.asset(
                            'assets/icons/arrow_right.svg',
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is AuthGetUserLogOutLoadingState) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LogInScreen(),
                            ),
                                (route) => false);
                      }
                    },
                    builder: (context, state) {
                      AuthCubit authCubit = AuthCubit.get(context);
                      return InkWell(
                        onTap: () {
                          authCubit.userMakLogOut();
                        },
                        child:Container(
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(208, 211, 212, 0.7),
                            // border: Border.all(width: 5,color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                'assets/icons/Log out.svg',
                                color: Color(0xFFFF7643),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Text(
                                'Log Out',
                                style: GoogleFonts.robotoSlab(
                                    fontSize: 20,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 215,
                              ),
                              SvgPicture.asset(
                                'assets/icons/arrow_right.svg',
                                width: 20,
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
    );
  }
}


