import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmFieldText extends StatelessWidget {

  late final String htext;

  EmFieldText(this.htext,{super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 40.0, // Set the minimum height
        maxHeight: 100.0, // Set the maximum height
      ),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.verified_rounded,color: Colors.greenAccent,),

          //Border
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white), // Color when focused
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade100), // Color when not focused
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),


          hintText: htext,
          hintStyle: GoogleFonts.ibmPlexSans(color: Colors.white60),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),


          contentPadding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 10.0,
          ),
        ),
      ),
    );
  }
}