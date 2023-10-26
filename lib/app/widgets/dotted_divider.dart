import 'package:flutter/material.dart';

class DottedDivider extends StatefulWidget {
  @override
  State<DottedDivider> createState() => _DottedDividerState();
}

class _DottedDividerState extends State<DottedDivider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1, // Thickness of the divider
      width: double.infinity,
      color: Colors.black45, // Color of the dots
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 70, // Number of dots
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 2,right: 2),
            width: 2,
            height: 2,// Width of each dot
            color: Colors.white60, // Color of the dots
          );
        },
      ),
    );
  }
}