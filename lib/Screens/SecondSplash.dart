import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/Screens/Login.dart';
import 'package:page_transition/page_transition.dart';

class SecondSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 247, 255),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 3, 4, 90),
        child: const Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft, child: Login()));
        },
      ),
      body: Column(children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "JobSpot",
                style: GoogleFonts.dmSans(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("lib/assets/person_vector.png"),
            filterQuality: FilterQuality.high,
          )),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Say Gex",
                    style: GoogleFonts.dmSans(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Blow Job",
                    style: GoogleFonts.dmSans(
                      decoration: TextDecoration.underline,
                      color: Colors.amber[700],
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Here!",
                    style: GoogleFonts.dmSans(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "ช้างเย็ดควายเย็ดแม่",
                      style: GoogleFonts.dmSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
