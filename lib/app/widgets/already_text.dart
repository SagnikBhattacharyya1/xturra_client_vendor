import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../data/stringmanager.dart';


class AlreadyText extends StatelessWidget {

  AlreadyText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text.rich(
        TextSpan(
            text: StringManager.alreadyText,
            style: GoogleFonts.ibmPlexSans(fontSize: 14,color:Colors.white60),
            children: [
              TextSpan(
                text: StringManager.loginText,
                style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.orangeAccent),
              ),
            ]
        )
    );
  }
}
