import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {

  late final String searchText;
  SearchBox(this.searchText,{super.key});


  @override
  Widget build(BuildContext context) {
    return Container (
      width: 385.0,
      height: 60,// Set the width of the search box
      padding: EdgeInsets.all(6.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 10.0),
          //Row is used in prefix icon
          prefixIcon: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(Icons.search, color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(searchText, style: GoogleFonts.ibmPlexSans(color: Colors.white),),
              ),
            ],
          ),
          suffixIcon: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 2),
                child: Container(
                  width: 1.0,
                  height: 30,// Width of the divider
                  color: Colors.grey, // Divider color
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:4,right: 6),
                child: Icon(Icons.mic_none_outlined, color: Colors.white,),
              ),
            ],
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
          ),
        ),
      ),
    );
  }
}