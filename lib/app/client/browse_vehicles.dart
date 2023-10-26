import 'package:client_app/app/client/vendordetails_service.dart';
import 'package:client_app/app/widgets/b_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/stringmanager.dart';
import '../widgets/search_box.dart';
import 'browse_services.dart';
import 'browse_vendors.dart';

class BrowseVehicles extends StatefulWidget {
  const BrowseVehicles({super.key});

  @override
  State<BrowseVehicles> createState() => _BrowseVehiclesState();
}

class _BrowseVehiclesState extends State<BrowseVehicles> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black45,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 49,
                      height: 1,
                      color: Colors.white60,
                    ),
                    Text(StringManager.expByText,
                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20),),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 48,
                      height: 1,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => VDServices()));
                },
                child: Container(
                  margin: EdgeInsets.only(top:10,left: 15),
                  child: Row(
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 5.0,
                        children:[
                          Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/truck_2.png"),fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                        ),
                          Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)
                      ]),
                      SizedBox(width: 30,),
                      Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          children:[
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/truck_3.png"),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                            ),
                            Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)
                          ]),
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => VDServices()));
                },
                child: Container(
                  margin: EdgeInsets.only(top:10,left: 15),
                  child: Row(
                    children: [
                      Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          children:[
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/truck_2.png"),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                            ),
                            Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)
                          ]),
                      SizedBox(width: 30,),
                      Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          children:[
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/truck_3.png"),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                            ),
                            Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)
                          ]),
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => VDServices()));
                },
                child: Container(
                  margin: EdgeInsets.only(top:10,left: 15),
                  child: Row(
                    children: [
                      Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          children:[
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/truck_2.png"),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                            ),
                            Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)
                          ]),
                      SizedBox(width: 30,),
                      Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          children:[
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/truck_3.png"),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                            ),
                            Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)
                          ]),
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => VDServices()));
                },
                child: Container(
                  margin: EdgeInsets.only(top:10,left: 15),
                  child: Row(
                    children: [
                      Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          children:[
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/truck_2.png"),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                            ),
                            Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)
                          ]),
                      SizedBox(width: 30,),
                      Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          children:[
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/images/truck_3.png"),fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                            ),
                            Text(StringManager.dumbTruckText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)
                          ]),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25,)
            ],
          ),
        ),
      ),
      //bottomNavigationBar: BNavBar(),
    );
  }
}
