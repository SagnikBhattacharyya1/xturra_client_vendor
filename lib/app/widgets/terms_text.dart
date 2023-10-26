import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../data/stringmanager.dart';


class TermsText extends StatelessWidget {

  TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            text: StringManager.termsText,
            style: GoogleFonts.ibmPlexSans(fontSize: 14,color:Colors.white60),
            children: [
              TextSpan(
                text: StringManager.tText,
                style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),
              ),
              TextSpan(
                text: StringManager.andText,
                style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white60),
              ),
              TextSpan(
                text: StringManager.pText,
                style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),
              ),

            ]
        )
    );
  }
}
