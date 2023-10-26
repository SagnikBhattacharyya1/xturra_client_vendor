import 'package:client_app/app/client/browse_services.dart';
import 'package:client_app/app/client/browse_vehicles.dart';
import 'package:client_app/app/client/vendordetails_service.dart';
import 'package:client_app/app/data/stringmanager.dart';
import 'package:client_app/app/widgets/b_navbar.dart';
import 'package:client_app/app/widgets/dotted_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/search_box.dart';

class BrowseVendorsTwo extends StatefulWidget
{
  const BrowseVendorsTwo({super.key});

  @override
  State<BrowseVendorsTwo> createState() => _BrowseVendorsState();
}

class _BrowseVendorsState extends State<BrowseVendorsTwo> {
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(color: Colors.black,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:8,left: 9),
                child: Stack(
                    children:[
                      Container(
                        height: 35,
                        width: 400,
                        margin: EdgeInsets.only(left: 60,top: 15),
                        child:ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: trendButtons.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black45,
                                  onPrimary: Colors.white60,
                                  side: BorderSide(color: Colors.white,width: 0.5),
                                  minimumSize: Size(70, 5),
                                  //maximumSize: Size(75, 6),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                ),
                                child: Text(trendButtons[index],style: GoogleFonts.ibmPlexSans(
                                  fontSize: 12,
                                  color: Colors.white60,

                                ),),
                              ),
                            );
                          },
                        ),
                      ),
                      Positioned(
                          top: 15,
                          left: 10,
                          child: Container(height: 35,width: 50,
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.white60),
                              image: DecorationImage(image: AssetImage("assets/images/menu.png"),fit: BoxFit.cover),
                            ),
                          ))
                    ]),
              ),

              //circle avatars:
              Container(
                height: 120,
                width: 400,
                margin: EdgeInsets.only(),
                child:Container(
                  //margin: EdgeInsets.only(bottom: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: trendButton2.length,
                    //itemExtent: 40,
                    //trendButtons.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 120,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurple.shade800,
                            image: DecorationImage(image: AssetImage(imageAssets[index]),fit: BoxFit.fill)
                        ),
                        child:Container(
                          margin: EdgeInsets.only(top: 95,left: 20),
                          child: Text(trendButton2[index],
                            style: GoogleFonts.ibmPlexSans(fontSize: 10,color: Colors.white),),
                        ) ,
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: 12,),
              Container(
                width: double.infinity,
                height: 1.0, // Height of the divider line
                child: Stack(
                  children: [
                    Container(
                      color: Colors.grey,
                      width: double.infinity,
                      height: 1.0, // Height of the grey portion
                    ),
                    Container(
                      color: Colors.yellow,
                      width: 105.0, // Width of the blue portion
                      height: 1.0, // Height of the blue portion
                    ),
                    Container(
                      color: Colors.grey,
                      width: 50,
                      height: 1.0, // Height of the grey portion
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12,),
              Row(
                children: [

                  Container(
                    width: 120,
                    height:   1,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text(StringManager.allven, style: TextStyle(color: Colors.white)),
                  SizedBox(width: 10),
                  Container(
                    width: 122,
                    height: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 50),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10,top: 8,bottom: 12),
                child: Column(
                  children: [
                    Container(
                      width: 350,
                      height: 160,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/docks_1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 110,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1
                          ),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)
                          )
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Text(StringManager.trans, style: TextStyle(
                                  color: Colors.white),),
                              SizedBox(width: 90,),
                              Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.green.shade900
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(StringManager.fdot, style: TextStyle(
                                            color: Colors.white, fontSize: 13)),
                                        SizedBox(width: 3,),
                                        Icon(Icons.star,color: Colors.white, size: 16,)
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Text(StringManager.fr, style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 5,),
                              Icon(Icons.brightness_1, color: Colors.grey, size: 5,),
                              SizedBox(width: 5,),
                              Text(StringManager.bo, style: TextStyle(color: Colors.grey)),
                              SizedBox(width: 5,),
                              Icon(Icons.brightness_1, color: Colors.grey, size: 5,),
                              SizedBox(width: 5,),
                              Text(StringManager.sp, style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Container(
                            height: 1, // Thickness of the divider
                            width: 270,
                            color: Colors.black45, // Color of the dots
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 100, // Number of dots
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 2,right: 2),
                                  width: 2,
                                  height: 2,// Width of each dot
                                  color: Colors.white60, // Color of the dots
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 11,),
                          Row(
                            children: [
                              SizedBox(width: 16,),
                              Image.asset('assets/icons/percent.png', width: 10, height: 10,),
                              SizedBox(width: 8,),
                              Text(StringManager.forper, style:  TextStyle(color: Colors.orange),)

                            ],
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10,top: 8,bottom: 12),
                child: Column(
                  children: [
                    Container(
                      width: 350,
                      height: 160,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/docks_1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 110,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1
                          ),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)
                          )
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Text(StringManager.trans, style: TextStyle(
                                  color: Colors.white),),
                              SizedBox(width: 90,),
                              Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.green.shade900
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(StringManager.fdot, style: TextStyle(
                                            color: Colors.white, fontSize: 13)),
                                        SizedBox(width: 3,),
                                        Icon(Icons.star,color: Colors.white, size: 16,)
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Text(StringManager.fr, style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 5,),
                              Icon(Icons.brightness_1, color: Colors.grey, size: 5,),
                              SizedBox(width: 5,),
                              Text(StringManager.bo, style: TextStyle(color: Colors.grey)),
                              SizedBox(width: 5,),
                              Icon(Icons.brightness_1, color: Colors.grey, size: 5,),
                              SizedBox(width: 5,),
                              Text(StringManager.sp, style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Container(
                            height: 1, // Thickness of the divider
                            width: 270,
                            color: Colors.black45, // Color of the dots
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 100, // Number of dots
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 2,right: 2),
                                  width: 2,
                                  height: 2,// Width of each dot
                                  color: Colors.white60, // Color of the dots
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 11,),
                          Row(
                            children: [
                              SizedBox(width: 16,),
                              Image.asset('assets/icons/percent.png', width: 10, height: 10,),
                              SizedBox(width: 8,),
                              Text(StringManager.forper, style:  TextStyle(color: Colors.orange),)

                            ],
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10,top: 8,bottom: 12),
                child: Column(
                  children: [
                    Container(
                      width: 350,
                      height: 160,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/docks_1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 110,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 1
                          ),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)
                          )
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Text(StringManager.trans, style: TextStyle(
                                  color: Colors.white),),
                              SizedBox(width: 90,),
                              Column(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.green.shade900
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(StringManager.fdot, style: TextStyle(
                                            color: Colors.white, fontSize: 13)),
                                        SizedBox(width: 3,),
                                        Icon(Icons.star,color: Colors.white, size: 16,)
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Text(StringManager.fr, style: TextStyle(color: Colors.grey),),
                              SizedBox(width: 5,),
                              Icon(Icons.brightness_1, color: Colors.grey, size: 5,),
                              SizedBox(width: 5,),
                              Text(StringManager.bo, style: TextStyle(color: Colors.grey)),
                              SizedBox(width: 5,),
                              Icon(Icons.brightness_1, color: Colors.grey, size: 5,),
                              SizedBox(width: 5,),
                              Text(StringManager.sp, style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Container(
                            height: 1, // Thickness of the divider
                            width: 270,
                            color: Colors.black45, // Color of the dots
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 100, // Number of dots
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 2,right: 2),
                                  width: 2,
                                  height: 2,// Width of each dot
                                  color: Colors.white60, // Color of the dots
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 11,),
                          Row(
                            children: [
                              SizedBox(width: 16,),
                              Image.asset('assets/icons/percent.png', width: 10, height: 10,),
                              SizedBox(width: 8,),
                              Text(StringManager.forper, style:  TextStyle(color: Colors.orange),)

                            ],
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),


              /*Column(
                children: [
                  Container(
                    width: 300,
                    height: 160,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/docks_1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 110,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        ),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                        )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Text(StringManager.mur, style: TextStyle(
                                color: Colors.white),),
                            SizedBox(width: 120,),
                            Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.green.shade900
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(StringManager.fdot, style: TextStyle(
                                          color: Colors.white, fontSize: 13)),
                                      SizedBox(width: 3),
                                      Icon(Icons.star,color: Colors.white, size: 16,)
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Text(StringManager.fr, style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 5,),
                            Icon(Icons.brightness_1, color: Colors.grey, size: 5,),
                            SizedBox(width: 5,),
                            Text(StringManager.bo, style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 5,),
                            Icon(Icons.brightness_1, color: Colors.grey, size: 5,),
                            SizedBox(width: 5,),
                            Text(StringManager.mot, style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Container(
                          height: 1, // Thickness of the divider
                          width: 270,
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
                        ),
                        SizedBox(height: 11,),
                        Row(
                          children: [
                            SizedBox(width: 16,),
                            Image.asset('assets/images/percent.png', width: 20, height: 20,),
                            SizedBox(width: 8,),
                            Text(StringManager.forper, style:  TextStyle(color: Colors.orange),)

                          ],
                        )

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),

              Column(
                children: [
                  Container(
                    width: 300,
                    height: 160,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/backtr.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 110,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            width: 1
                        ),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                        )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Text(StringManager.trans, style: TextStyle(
                                color: Colors.white),),
                            SizedBox(width: 100,),
                            Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.green.shade900
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(StringManager.fdot, style: TextStyle(
                                          color: Colors.white, fontSize: 13)),
                                      SizedBox(width: 3),
                                      Icon(Icons.star,color: Colors.white, size: 16,)
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Text(StringManager.fr, style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 5,),
                            Icon(Icons.brightness_1, color: Colors.grey, size: 5,),
                            SizedBox(width: 5,),
                            Text(StringManager.bo, style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 5,),
                            Icon(Icons.brightness_1, color: Colors.grey, size: 5,),
                            SizedBox(width: 5,),
                            Text(StringManager.cons, style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Container(
                          height: 1, // Thickness of the divider
                          width: 270,
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
                        ),
                        SizedBox(height: 11,),
                        Row(
                          children: [
                            SizedBox(width: 16,),
                            Image.asset('assets/images/percent.png', width: 20, height: 20,),
                            SizedBox(width: 8,),
                            Text(StringManager.forper, style:  TextStyle(color: Colors.orange),)

                          ],
                        )

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35,),*/
            ],
          ),
        ),
      ),
    );
  }
}
