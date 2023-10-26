import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterText extends StatelessWidget {



  FooterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: Colors.grey,
                    width: 2.0
                )
            ),
            child: ClipOval(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/images/app.png',
                    fit: BoxFit.cover,),
                ))),
        SizedBox(width: 20),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Colors.grey,
                  width: 2.0
              )
          ),
          child: ClipOval(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Image.asset('assets/images/goo.png',
                  fit: BoxFit.cover,),
              )),
        ),
        SizedBox(width: 20),
        Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: Colors.grey,
                    width: 2.0
                )
            ),
            child: ClipOval(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset('assets/images/wind.png',
                    fit: BoxFit.cover,),
                ))),
      ],
    );
  }
}