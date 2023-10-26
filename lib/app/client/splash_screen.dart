import 'dart:async';
import 'package:client_app/app/client/home_page.dart';
import 'package:client_app/app/client/role_selection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Role(),));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/si.jpeg', width: 200,height: 150),
              Text("Xturra", style: GoogleFonts.ibmPlexSans(color: Colors.white, fontSize: 25),)
            ],
          ),
        ),
      ),
    );
  }
}
