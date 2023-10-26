import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Buttons extends StatelessWidget {

  late final String title;
  late final Widget destination;

  Buttons(this.title,this.destination,{super.key});



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => destination,
        ),
      );

    },
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          minimumSize: Size(350, 40),
        ),
        child: Text(title));
  }
}