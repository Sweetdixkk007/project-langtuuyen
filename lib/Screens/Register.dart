import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/Widgets/My_Button.dart';
import 'package:jobspot/Widgets/Text_field.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final repasswordController = TextEditingController();

  signUpWithEmail() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      print("Created successfully");
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 239, 247, 255),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 239, 247, 255),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Create an Account",
            style: GoogleFonts.dmSans(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 3, 4, 90)),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
              style: GoogleFonts.dmSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: const Color.fromARGB(255, 3, 4, 90)),
              textAlign: TextAlign.center,
            ),
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
            controller: nameController,
            labelText: "Name",
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
            labelText: "gfh",
            obscureText: true,
            hintText: "Enter your password.",
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
                  "Confirm Password",
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
            controller: repasswordController,
            labelText: "asda",
            obscureText: false,
            hintText: "again.",
          ),
          const SizedBox(
            height: 15,
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 35),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Container(
          //         height: MediaQuery.of(context).size.height * 0.03,
          //         child: Row(children: [
          //           Transform.scale(
          //             scale: 0.7,
          //             child: Checkbox(
          //               value: isChecked,
          //               activeColor: const Color.fromARGB(255, 3, 4, 90),
          //               onChanged: (newBool) {
          //                 setState(() {
          //                   isChecked = newBool;
          //                 });
          //               },
          //               side: const BorderSide(
          //                 color: Color.fromARGB(103, 3, 4, 90),
          //                 width: 1,
          //               ),
          //             ),
          //           ),
          //           const SizedBox(
          //             width: 0,
          //           ),
          //           Text(
          //             "Remember me",
          //             style: GoogleFonts.dmSans(
          //                 fontSize: 12,
          //                 fontWeight: FontWeight.w300,
          //                 color: const Color.fromARGB(150, 3, 4, 90)),
          //           ),
          //         ]),
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width *
          //       0.6, // Adjust the width as needed
          //   child: ElevatedButton(
          //     onPressed: isLoading
          //         ? null
          //         : () {
          //             // Your button onPressed logic here
          //           },
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: const Color.fromARGB(255, 4, 6, 126), // Background color
          //     ),
          //     child: Container(
          //       height: MediaQuery.of(context).size.height * 0.05,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(5),
          //       ),
          //       child:
          //           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //         isLoading
          //             ? const CircularProgressIndicator(
          //                 color: Colors.white,
          //               )
          //             : Text(
          //                 "Sign up",
          //                 style: GoogleFonts.dmSans(
          //                   fontSize: 16,
          //                   fontWeight: FontWeight.w700,
          //                   color: const Color.fromARGB(255, 255, 255, 255),
          //                 ),
          //               ),
          //       ]),
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 207, 207, 255),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("lib/assets/google.png"),
                        filterQuality: FilterQuality.high)),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Sign up with Google",
                style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account yet? ",
                style: GoogleFonts.dmSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: const Color.fromARGB(255, 4, 6, 126),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Sign In",
                  style: GoogleFonts.dmSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.amber[700],
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
