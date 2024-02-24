import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jobspot/Widgets/navbar.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Text("Gay",
              style: GoogleFonts.lato(
                fontSize: 52,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              )),
        ),
      ),
    );
  }
}