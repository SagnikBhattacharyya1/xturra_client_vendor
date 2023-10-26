import 'package:client_app/app/client/account_edit.dart';
import 'package:client_app/app/client/browse_services.dart';
import 'package:client_app/app/client/browse_vehicles.dart';
import 'package:client_app/app/client/my_account.dart';
import 'package:client_app/app/client/vendordetails_service.dart';
import 'package:client_app/app/data/stringmanager.dart';
import 'package:client_app/app/widgets/b_navbar.dart';
import 'package:client_app/app/widgets/dotted_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/search_box.dart';
import 'browse_vendors_two.dart';

class BrowseVendors extends StatefulWidget
{
  const BrowseVendors({super.key});

  @override
  State<BrowseVendors> createState() => _BrowseVendorsState();
}

class _BrowseVendorsState extends State<BrowseVendors> {
  final List<String> imageAssets = [
    'assets/images/images.jpg',
    'assets/images/bike.jpg',
    'assets/images/bike2.jpg',
    'assets/images/bike.jpg',
    'assets/images/bike.jpg',
    // Add more asset image paths
  ];
  final List<String> trendButtons = ["Frieght", "Warehousing", "Storage","Summer","Ethnic"];
  final List<String> trendButton2 = ["All", "Car", "Bike","Sport","Truck"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(110.0),
            child: Column(
              children:[
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 6),
                                  child: Icon(Icons.location_on,color: Colors.white,size: 12,)),
                              Text("Indonesia",
                                style: GoogleFonts.ibmPlexSans(color:Colors.white,fontSize:15,fontWeight: FontWeight.w500),),
                              Container(margin: EdgeInsets.only(left: 5),
                                  child: Icon(Icons.keyboard_arrow_down_rounded,size: 12,color: Colors.orangeAccent,))
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                              child: Text("EN Block,Lake Road",
                                style: GoogleFonts.ibmPlexSans(color:Colors.white,fontSize: 12),)),
                        ],
                      ),


                        InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => MyAccount()));
                          },
                          child: Container(
                            child: Padding(
                              padding:  EdgeInsets.only(left:190,),
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
                          ),
                        ),
                    ],
                  ),
                ),
                SearchBox("Search Vendors"),
                TabBar(
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(text: "Vendors",),
                  Tab(text: "Services",),
                  Tab(text: "Vehicles",),
                ],
              ),
            ]),
          )
        ),
        body: TabBarView(children: [
          BrowseVendorsTwo(),
          BrowserServices(),
          BrowseVehicles(),
          //Center(child: Text("Services",style: GoogleFonts.ibmPlexSans(color: Colors.white),),),
          //Center(child: Text("Vehicles",style: GoogleFonts.ibmPlexSans(color: Colors.white),),),
        ]),
      ),
    );
  }
}
