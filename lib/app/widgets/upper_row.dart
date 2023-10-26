import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../data/stringmanager.dart';


class UpperRow extends StatelessWidget {
  var color1;
  var color2;


  UpperRow(this.color1,this.color2,{super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.only(right: 50),
          child: Text(StringManager.individualText,
            style: GoogleFonts.ibmPlexSans(color:color1,fontSize: 20),),
        ),
        Container(
          margin: EdgeInsets.only(left: 50),
          child: Text(StringManager.bussinessText,
            style: GoogleFonts.ibmPlexSans(color: color2,fontSize: 20),),
        ),
      ],
    );
  }
}
