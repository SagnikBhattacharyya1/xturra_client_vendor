import 'package:client_app/app/client/browse_vehicles.dart';
import 'package:client_app/app/widgets/b_navbar.dart';
import 'package:client_app/app/widgets/dotted_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/stringmanager.dart';
import '../widgets/search_box.dart';
import 'browse_vendors.dart';

class BrowserServices extends StatefulWidget {
  const BrowserServices({super.key});

  @override
  State<BrowserServices> createState() => _BrowserServicesState();
}

class _BrowserServicesState extends State<BrowserServices> {
  final List<String> imageAssets = [
    'assets/images/airliner.png',
    'assets/images/airliner.png',
    'assets/images/airliner.png',
    'assets/images/airliner.png',
    'assets/images/airliner.png',
    // Add more asset image paths
  ];
  final List<String> trendButton3 = ["Shifting", "Warehouse", "Storage","Summer","Ethnic"];
  final List<String> trendButton2 = ["Corporate", "Car", "Bike","Sport","Truck"];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black45,
      /*appBar: AppBar(
        backgroundColor: Colors.black45,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            margin: EdgeInsets.only(right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 17.0),
                      child: Icon(Icons.location_on_outlined, color: Colors.white,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(StringManager.countryText, style: TextStyle(fontWeight: FontWeight.w900,
                                    color: Colors.white),),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_down, color: Colors.orange),
                          ],
                        ),
                        Text(StringManager.address2Text, style:  TextStyle(fontSize: 12,
                            color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 128,),
                    Padding(
                      padding:  EdgeInsets.only(left:30,bottom: 10),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.white,
                              width: 1.0
                          ),// Set the border radius here
                          image: DecorationImage(
                            image: AssetImage("assets/images/images.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),*/
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              Container(
                height: 130,
                width: 400,
                margin: EdgeInsets.only(),
                child:Container(
                  margin: EdgeInsets.only(bottom: 9),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: trendButton2.length,
                    //itemExtent: 40,
                    //trendButtons.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5,),
                        height: 120,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueGrey,
                          image: DecorationImage(image: AssetImage("assets/images/airliner.png"),fit: BoxFit.contain)

                        ),
                        child:Container(
                          margin: EdgeInsets.only(top: 88,left: 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 5,),
                              Text(trendButton2[index],
                                style: GoogleFonts.ibmPlexSans(fontSize: 9,color: Colors.white),),
                              Text(trendButton3[index],
                                style: GoogleFonts.ibmPlexSans(fontSize: 9,color: Colors.white),),
                            ],
                          ),
                        ) ,
                      );
                    },
                  ),
                ),
              ),

//  Corporate shifting part
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 63,
                      height: 1,
                      color: Colors.white60,
                    ),
                    Text(StringManager.corpShText,
                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20),),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 62,
                      height: 1,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
              Stack(
                children:[ 
                  Container(
                  height: 120,
                  width: 400,
                  margin: EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(image: AssetImage("assets/images/truck_2.png"),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 4.0,
                          children: [
                            Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                            Text(StringManager.capText,style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),),
                            Row(children: [
                              Icon(Icons.location_on,size: 12,color: Colors.white,),
                              SizedBox(width: 2,),
                              Text(StringManager.address2Text,style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 12),)

                            ],)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                  Positioned(
                      top: 43,
                      left:320,
                      child: Container(width: 40,height: 23,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 9,top: 5),
                            child: Text(StringManager.newText,style: GoogleFonts.ibmPlexSans(fontSize: 9,color: Colors.white),)),))
              ]),
              DottedDivider(),
              Stack(
                  children:[
                    Container(
                      height: 120,
                      width: 400,
                      margin: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(image: AssetImage("assets/images/truck_3.png"),fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Wrap(
                              direction: Axis.vertical,
                              spacing: 4.0,
                              children: [
                                Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                                Text(StringManager.capText,style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),),
                                Row(children: [
                                  Icon(Icons.location_on,size: 12,color: Colors.white,),
                                  SizedBox(width: 2,),
                                  Text(StringManager.address2Text,style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 12),)

                                ],)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        top: 43,
                        left:320,
                        child: Container(width: 40,height: 23,
                          decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Container(
                              margin: EdgeInsets.only(left: 9,top: 5),
                              child: Text(StringManager.newText,style: GoogleFonts.ibmPlexSans(fontSize: 9,color: Colors.white),)),))
                  ]),
              DottedDivider(),
              Stack(
                  children:[
                    Container(
                      height: 120,
                      width: 400,
                      margin: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(image: AssetImage("assets/images/truck_2.png"),fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Wrap(
                              direction: Axis.vertical,
                              spacing: 4.0,
                              children: [
                                Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                                Text(StringManager.capText,style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),),
                                Row(children: [
                                  Icon(Icons.location_on,size: 12,color: Colors.white,),
                                  SizedBox(width: 2,),
                                  Text(StringManager.address2Text,style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 12),)

                                ],)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        top: 43,
                        left:320,
                        child: Container(width: 40,height: 23,
                          decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Container(
                              margin: EdgeInsets.only(left: 9,top: 5),
                              child: Text(StringManager.newText,style: GoogleFonts.ibmPlexSans(fontSize: 9,color: Colors.white),)),))
                  ]),
              Container(
                margin: EdgeInsets.only(bottom: 100),
                  child: DottedDivider()),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: BNavBar(),
    );
  }
}
