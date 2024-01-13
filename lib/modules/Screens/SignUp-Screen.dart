import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/Controller/cubit/auth_cubit.dart';
import 'package:project/Controller/cubit/auth_state.dart';
import 'package:project/modules/Screens/LogIn.dart';
import 'package:project/modules/Screens/Splash-Screen2.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passwordvisible = true;
  bool passwordvisible1 = true;
  TextEditingController __usernameController = TextEditingController();
  TextEditingController __emailController = TextEditingController();
  TextEditingController __passwordController = TextEditingController();
  final GlobalKey<FormState> __formKey = GlobalKey();

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
                Container(
                  margin: const EdgeInsets.only(right: 350,bottom: 20,top: 40),
                  width: 25,
                  height: 25,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const LogInScreen(),
                          ));
                    },
                    child: SvgPicture.asset('assets/icons/Back ICon.svg',),
                  ),
                ),
                 Text(
                  "Register",
                  style: GoogleFonts.robotoSlab(fontSize: 60,color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 200),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            ),
            child: Form(
              key: __formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 75,
                    ),
                    TextFormField(
                      controller: __usernameController,
                      style: const TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 5),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          labelText: "UserName",
                          labelStyle: const TextStyle(fontSize: 25),
                          hintText: "Enter Your UserName",
                          hintStyle: const TextStyle(fontSize: 15),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.orange,
                          )
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return"Enter Your UserName";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 30,),
                    TextFormField(
                      controller: __emailController,
                      style: const TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(width: 10),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          labelText: "Email",
                          labelStyle: const TextStyle(fontSize: 25),
                          hintText: "Enter Your Email",
                          hintStyle: const TextStyle(fontSize: 15),
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Colors.orange,
                          )),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@') ) {
                          return "Enter Your Email";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: __passwordController,
                      style: const TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 10),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelText: "Password",
                        labelStyle: const TextStyle(fontSize: 25),
                        hintText: "Enter your Password",
                        hintStyle: const TextStyle(fontSize: 15),
                        suffixIcon: IconButton(
                          icon: Icon(passwordvisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              passwordvisible = !passwordvisible;
                            });
                          },
                        ),
                        prefixIcon: const Icon(
                          Icons.password_outlined,
                          color: Colors.orange,
                        ),
                      ),
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Enter Your Password";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordvisible,
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      style: const TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 10),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelText: "Confirm Password",
                        labelStyle: const TextStyle(fontSize: 25),
                        hintText: "Confirm your Password",
                        hintStyle: const TextStyle(fontSize: 15),
                        suffixIcon: IconButton(
                          icon: Icon(passwordvisible1
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              passwordvisible1 = !passwordvisible1;
                            });
                          },
                        ),
                        prefixIcon: const Icon(
                          Icons.password_outlined,
                          color: Colors.orange,
                        ),
                      ),
                      validator: (value) {
                        if(value!.isEmpty)
                        {
                          return "Confirm Your Password";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordvisible1,
                    ),
                    const SizedBox(height: 60),
                    BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if (state is AuthGetUserAfterRegisterSuccessgState) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Splah(),
                              ),
                                  (route) => false);
                        }
                      },
                      builder: (context, state) {
                        AuthCubit authCubit = AuthCubit.get(context);
                        return InkWell(
                          onTap: () {
                            if (__formKey.currentState!.validate()) {
                              authCubit.userMakRegister(
                                email: __emailController.text.trim(),
                                password: __passwordController.text.trim(),
                                username: __usernameController.text.trim(),
                              );
                            }
                          },
                          child: Container(
                            width: 400,
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
                                "Register",
                                style: GoogleFonts.robotoSlab(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
