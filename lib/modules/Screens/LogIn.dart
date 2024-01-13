import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/modules/Screens/ForgotPassword-Screen.dart';
import 'package:project/modules/Screens/HomePage.dart';
import 'package:project/modules/Screens/SignUp-Screen.dart';
import 'package:project/modules/Screens/Splash-LogIn.dart';
import 'package:sign_in_button/sign_in_button.dart';
import '../../Controller/cubit/auth_cubit.dart';
import '../../Controller/cubit/auth_state.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
    await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  bool passwordvisible = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

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
                const SizedBox(height: 80),
                Text(
                  "Log In",
                  style:
                      GoogleFonts.robotoSlab(color: Colors.white, fontSize: 60),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 220),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                  child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 80,
                    ),
                    TextFormField(
                      controller: _emailController,
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
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return "Enter Your Email";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: _passwordController,
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
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordvisible,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Your Password";
                        }
                        return null;
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 200, top: 10),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const ForgotPassword(),
                              ));
                        },
                        child: Text(
                          'forgot password ?',
                          style: GoogleFonts.robotoSlab(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if (state is AuthGetUserAfterLoginSuccessgState) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SplahLogIn(),
                              ),
                              (route) => false);
                        }
                      },
                      builder: (context, state) {
                        AuthCubit authCubit = AuthCubit.get(context);
                        return InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              authCubit.userMakLogin(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim(),
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
                                "Log In",
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
                    const SizedBox(height: 10),
                    BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if (state is AuthGetUserAfterLoginAsAnonymousLoadingState) {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                              (route) => false);
                        }
                      },
                      builder: (context, state) {
                        AuthCubit authCubit = AuthCubit.get(context);
                        return Container(
                          margin: const EdgeInsets.only(right: 200),
                            child: TextButton(
                              onPressed: () {
                                authCubit.userMakLoginAnonymous();
                              },
                              child: Text('Login As Anonymous',style: GoogleFonts.robotoSlab(fontSize: 15),),
                            ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already Have An Account?",
                          style: GoogleFonts.robotoSlab(fontSize: 16),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()),
                            );
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 17),
                    Text(
                      'SignIn By',
                      style: GoogleFonts.robotoSlab(fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Divider(),
                        const SizedBox(
                          width: 5,
                        ),
                        SignInButton(
                          Buttons.facebook,
                          mini: true,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SignInButton(
                          Buttons.gitHub,
                          mini: true,
                          onPressed: () async {
                            await signInWithGoogle();
                          },
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SignInButton(
                          Buttons.linkedIn,
                          mini: true,
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
