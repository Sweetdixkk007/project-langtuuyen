import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/Screens/ForgotPass.dart';
import 'package:jobspot/Screens/Home.dart';
import 'package:jobspot/Screens/Register.dart';
import 'package:jobspot/Widgets/My_Button.dart';
import 'package:jobspot/Widgets/Text_field.dart';

import 'package:page_transition/page_transition.dart';
import 'package:firebase_auth/firebase_auth.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  signInWithEmail() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      print("Login successfully");
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 162, 53),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          Text(
            "กรุณาเข้าสู่ระบบ",
            style: GoogleFonts.dmSans(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 3, 4, 90)),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Email",
                  style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 3, 4, 90)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text_field(
            
            controller: emailController,
            labelText: "",
            obscureText: false,
            hintText: "Enter your name.",          
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Password",
                  style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 3, 4, 90)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text_field(
            controller: passwordController,
            labelText: '',
            obscureText: true,
            hintText: "Enter your password.",          
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.dmSans(
                            textStyle: Theme.of(context).textTheme.displaySmall,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  MyButton(
                    onTap: signInWithEmail,
                    hinText: "Sign In",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          const SizedBox(
            height: 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You don't have an account yet? ",
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: const Color.fromARGB(255, 4, 6, 126),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade, child: const Register()));
                },
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.dmSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
