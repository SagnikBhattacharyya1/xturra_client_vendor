import 'package:client_app/app/client/messages_page.dart';
import 'package:client_app/app/widgets/b_navbar.dart';
import 'package:client_app/app/widgets/dotted_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/stringmanager.dart';
import '../widgets/search_box.dart';
import 'notifications_page.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar:AppBar(
        backgroundColor: Colors.black45,
        title: Text("Offers",style: GoogleFonts.ibmPlexSans(fontSize: 18,color: Colors.white),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading:  Container(
            margin: EdgeInsets.only(right: 25),
            child:  IconButton( onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new_outlined))
        ),
      ),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.only(left: 10,right:5),
              child: SearchBox("Search vendors")),
          Container(
            margin: EdgeInsets.only(top:10,right: 10,left: 5),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 80,
                  width: 105,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.white,width: 0.5),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Column(children: [
                      Icon(Icons.notifications,size: 30,color: Colors.white,),
                      SizedBox(height: 5,),
                      Text("Notifications",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),)
                    ],),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OfferPage()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.white,width: 0.5),

                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Column(children: [
                        Icon(Icons.discount_outlined,size: 30,color: Colors.white,),
                        SizedBox(height: 5,),
                        Text("Offers",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),)
                      ],),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Messages()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 105,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Colors.white,width: 0.5),

                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Column(children: [
                        Icon(Icons.message_sharp,size: 30,color: Colors.white,),
                        SizedBox(height: 5,),
                        Text("Messages",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),)
                      ],),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 87,
                  height: 1,
                  color: Colors.white60,
                ),
                Text(StringManager.recoText,
                  style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20),),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 100,
                  height: 1,
                  color: Colors.white60,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:10,left: 10),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white, // Set the border color
                        width: 0.5, // Set the border width
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Column(
                    children: [
                      Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 3),
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 3.0,
                                children: [
                                  Container(
                                    width: 105,height: 150,

                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                                        image: DecorationImage(image: AssetImage("assets/images/truck_4.png"),fit: BoxFit.cover)
                                    ),),
                                  Text(StringManager.proNameOneText,style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                                  Text("Frieght",style: GoogleFonts.ibmPlexSans(fontSize: 10,color: Colors.white60),),
                                  Container(
                                    margin: EdgeInsets.only(top: 2,bottom: 2,left: 1,right: 1),
                                    height: 1,width: 100,color: Colors.white,),
                                  Row(children: [
                                    Icon(Icons.block_rounded,size:12,color: Colors.orange,),
                                    SizedBox(width: 2,),
                                    Text("40% Off",style: GoogleFonts.ibmPlexSans(color:Colors.yellow,fontSize: 12),),
                                    SizedBox(height: 10,)
                                  ],)
                                ],
                              ),
                            ),
                            Positioned(
                                top: 5,
                                left: 65,
                                child: Container(
                                  height:15,width:35,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(2.0)

                                  ),
                                  child:Center(
                                    child: Row(

                                      children: [
                                        SizedBox(width: 7,),
                                        Text("4.5",style: GoogleFonts.ibmPlexSans(fontSize: 7,color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,size: 9,)],),
                                  ) ,))
                          ]),
                      SizedBox(height: 4,)
                    ],
                  ),
                ),
                SizedBox(width: 7,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white, // Set the border color
                        width: 0.5, // Set the border width
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Column(
                    children: [
                      Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 3),
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 3.0,
                                children: [
                                  Container(width: 105,height: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                                        image: DecorationImage(image: AssetImage("assets/images/truck_4.png"),fit: BoxFit.cover)
                                    ),),
                                  Text(StringManager.proNameOneText,style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                                  Text("Frieght",style: GoogleFonts.ibmPlexSans(fontSize: 10,color: Colors.white60),),
                                  Container(
                                    margin: EdgeInsets.only(top: 2,bottom: 2,left: 1,right: 1),
                                    height: 1,width: 100,color: Colors.white,),
                                  Row(children: [
                                    Icon(Icons.block_rounded,size:12,color: Colors.orange,),
                                    SizedBox(width: 2,),
                                    Text("40% Off",style: GoogleFonts.ibmPlexSans(color:Colors.yellow,fontSize: 12),),
                                    SizedBox(height: 10,)
                                  ],)
                                ],
                              ),
                            ),
                            Positioned(
                                top: 5,
                                left: 65,
                                child: Container(
                                  height:15,width:35,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(2.0)

                                  ),
                                  child:Center(
                                    child: Row(

                                      children: [
                                        SizedBox(width: 7,),
                                        Text("4.5",style: GoogleFonts.ibmPlexSans(fontSize: 7,color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,size: 9,)],),
                                  ) ,))
                          ]),
                      SizedBox(height: 4,)
                    ],
                  ),
                ),
                SizedBox(width: 7,),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white, // Set the border color
                        width: 0.5, // Set the border width
                      ),
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Column(
                    children: [
                      Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 3),
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 3.0,
                                children: [
                                  Container(width: 105,height: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0),topRight: Radius.circular(5.0)),
                                        image: DecorationImage(image: AssetImage("assets/images/truck_4.png"),fit: BoxFit.cover)
                                    ),),
                                  Text(StringManager.proNameOneText,style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                                  Text("Frieght",style: GoogleFonts.ibmPlexSans(fontSize: 10,color: Colors.white60),),
                                  Container(
                                    margin: EdgeInsets.only(top: 2,bottom: 2,left: 1,right: 1),
                                    height: 1,width: 100,color: Colors.white,),
                                  Row(children: [
                                    Icon(Icons.block_rounded,size:12,color: Colors.orange,),
                                    SizedBox(width: 2,),
                                    Text("40% Off",style: GoogleFonts.ibmPlexSans(color:Colors.yellow,fontSize: 12),),
                                    SizedBox(height: 10,)
                                  ],)
                                ],
                              ),
                            ),
                            Positioned(
                                top: 5,
                                left: 65,
                                child: Container(
                                  height:15,width:35,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(2.0)

                                  ),
                                  child:Center(
                                    child: Row(

                                      children: [
                                        SizedBox(width: 7,),
                                        Text("4.5",style: GoogleFonts.ibmPlexSans(fontSize: 7,color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,size: 9,)],),
                                  ) ,))
                          ]),
                      SizedBox(height: 4,)
                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 35,
                  height: 1,
                  color: Colors.white60,
                ),
                Text(StringManager.whatLookText,
                  style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 18),),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 35,
                  height: 1,
                  color: Colors.white60,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15,left: 10,right: 10),
            decoration: BoxDecoration(
                border:Border.all(color: Colors.white,width: 0.5),
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(),
                        width: 340,
                        height: 120,
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          image: DecorationImage(image: AssetImage("assets/images/docks_1.png"),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(8.0),
                        ),

                      ),
                      SizedBox(height: 20,),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(StringManager.transText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(StringManager.extraBankText,style: GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 10),)),
                      SizedBox(height: 10,)
                    ],
                  ),
                  Positioned(
                      top: 110,
                      left: 10,
                      child: Container(
                        height: 25,
                        width: 320,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Icon(Icons.pending,size:15,color: Colors.white,),
                              SizedBox(width: 10,),
                              Text(StringManager.discountText,
                                style: GoogleFonts.ibmPlexSans(color: Colors.white),)],),
                        ),
                      )),
                  Positioned(
                      top: 148,
                      left: 274,
                      child: Container(
                        width: 35,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 6),
                          child: Row(children: [
                            Text(StringManager.rateText,style: GoogleFonts.ibmPlexSans(fontSize: 8,color: Colors.white),),
                            Icon(Icons.star,color: Colors.white,size: 10,)

                          ],),
                        ),))
                ]),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Messages()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 15,left: 10,right: 10,bottom: 50),
              decoration: BoxDecoration(
                  border:Border.all(color: Colors.white,width: 0.5),
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(),
                          width: 340,
                          height: 120,
                          decoration: BoxDecoration(
                            //color: Colors.red,
                            image: DecorationImage(image: AssetImage("assets/images/docks_1.png"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(8.0),
                          ),

                        ),
                        SizedBox(height: 20,),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(StringManager.transText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(StringManager.extraBankText,style: GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 10),)),
                        SizedBox(height: 10,)
                      ],
                    ),
                    Positioned(
                        top: 110,
                        left: 10,
                        child: Container(
                          height: 25,
                          width: 320,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Row(
                              children: [
                                Icon(Icons.pending,size:15,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text(StringManager.discountText,
                                  style: GoogleFonts.ibmPlexSans(color: Colors.white),)],),
                          ),
                        )),
                    Positioned(
                        top: 148,
                        left: 274,
                        child: Container(
                          width: 35,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 6),
                            child: Row(children: [
                              Text(StringManager.rateText,style: GoogleFonts.ibmPlexSans(fontSize: 8,color: Colors.white),),
                              Icon(Icons.star,color: Colors.white,size: 10,)

                            ],),
                          ),))
                  ]),
            ),
          ),
        ],
      ),
      //bottomNavigationBar: BNavBar(),
    );
  }
}
