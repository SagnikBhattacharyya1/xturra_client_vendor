import 'package:client_app/app/client/messages_page.dart';
import 'package:client_app/app/client/offer_page.dart';
import 'package:client_app/app/data/stringmanager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/Items.dart';
import '../widgets/b_navbar.dart';
import '../widgets/search_box.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {

  final List<Item> items = [
    Item(
      title: 'Item 1',
      subtitle: '40 min',
      imageUrl:
      'https://via.placeholder.com/100', // Replace with your image URL
    ),
    Item(
      title: 'Item 2',
      subtitle: 'Description for Item 2',
      imageUrl:
      'https://via.placeholder.com/100', // Replace with your image URL
    ),
    // Add more items here
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        backgroundColor: Colors.black,
        title: Text("Messenger",style: GoogleFonts.ibmPlexSans(fontSize: 18,color: Colors.white),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading:  Container(
            margin: EdgeInsets.only(right: 25),
            child:  IconButton( onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new_outlined))),
      ),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.only(left: 10,right: 5),
              child: SearchBox("Search vendors")),
          Container(
            margin: EdgeInsets.only(top:10,right: 10,left: 5),
            child: Row(
              children: [
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotificationsPage()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 105,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Colors.white,width: 0.5),
                        color: Colors.orangeAccent
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
            margin: EdgeInsets.only(top:15,left: 15),
            child: RichText(
                text: TextSpan(
              text: "You have 3 ",
              style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),
              children: [
                TextSpan(
                    text:"notifications ",
                style: GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 14)
                ),
                TextSpan(
                    text:"today .",
                    style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14)
                ),
              ]
            )),
          ),
//today
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 138,
                  height: 1,
                  color: Colors.white60,
                ),
                Text("TODAY",
                  style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20),),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 138,
                  height: 1,
                  color: Colors.white60,
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 15,),
            child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5, 0),
                                      blurRadius: 5,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("assets/images/truck_5.png"),fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 1,),
                                    child: RichText(text: TextSpan(
                                        text: StringManager.noti1Text,
                                        style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),
                                        children: [
                                          TextSpan(text: StringManager.noti2Text,
                                            style: GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 12),),
                                          TextSpan(text: StringManager.noti3Text,
                                            style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),)
                                        ]
                                    )),
                                  ),
                                  Text(StringManager.notiTimeText,
                                    style: GoogleFonts.ibmPlexSans(color: Colors.grey,fontSize: 10),)
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                      top: 27,
                      left: 5,
                      child: Container(height: 5,width: 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red
                        ),))
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 15,),
            child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5, 0),
                                      blurRadius: 5,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("assets/images/truck_5.png"),fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 1,),
                                    child: RichText(text: TextSpan(
                                        text: StringManager.noti1Text,
                                        style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),
                                        children: [
                                          TextSpan(text: StringManager.noti2Text,
                                            style: GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 12),),
                                          TextSpan(text: StringManager.noti3Text,
                                            style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),)
                                        ]
                                    )),
                                  ),
                                  Text(StringManager.notiTimeText,
                                    style: GoogleFonts.ibmPlexSans(color: Colors.grey,fontSize: 10),)
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                      top: 27,
                      left: 5,
                      child: Container(height: 5,width: 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red
                        ),))
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 15,),
            child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5, 0),
                                      blurRadius: 5,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("assets/images/truck_5.png"),fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 1,),
                                    child: RichText(text: TextSpan(
                                        text: StringManager.noti1Text,
                                        style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),
                                        children: [
                                          TextSpan(text: StringManager.noti2Text,
                                            style: GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 12),),
                                          TextSpan(text: StringManager.noti3Text,
                                            style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),)
                                        ]
                                    )),
                                  ),
                                  Text(StringManager.notiTimeText,
                                    style: GoogleFonts.ibmPlexSans(color: Colors.grey,fontSize: 10),)
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                      top: 27,
                      left: 5,
                      child: Container(height: 5,width: 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red
                        ),))
                ]),
          ),

//yesterday
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: 115,
                  height: 1,
                  color: Colors.white60,
                ),
                Text("YESTERDAY",
                  style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20),),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 115,
                  height: 1,
                  color: Colors.white60,
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 15,),
            child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5, 0),
                                      blurRadius: 5,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("assets/images/truck_5.png"),fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 1,),
                                    child: RichText(text: TextSpan(
                                        text: StringManager.noti1Text,
                                        style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),
                                        children: [
                                          TextSpan(text: StringManager.noti2Text,
                                            style: GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 12),),
                                          TextSpan(text: StringManager.noti3Text,
                                            style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),)
                                        ]
                                    )),
                                  ),
                                  Text(StringManager.notiTimeText,
                                    style: GoogleFonts.ibmPlexSans(color: Colors.grey,fontSize: 10),)
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                      top: 27,
                      left: 5,
                      child: Container(height: 5,width: 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey
                        ),))
                ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 15,bottom: 50),
            child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(5, 0),
                                      blurRadius: 5,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("assets/images/truck_5.png"),fit: BoxFit.cover)
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              margin: EdgeInsets.only(left: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 1,),
                                    child: RichText(text: TextSpan(
                                        text: StringManager.noti1Text,
                                        style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),
                                        children: [
                                          TextSpan(text: StringManager.noti2Text,
                                            style: GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 12),),
                                          TextSpan(text: StringManager.noti3Text,
                                            style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),)
                                        ]
                                    )),
                                  ),
                                  Text(StringManager.notiTimeText,
                                    style: GoogleFonts.ibmPlexSans(color: Colors.grey,fontSize: 10),)
                                ],
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Positioned(
                      top: 27,
                      left: 5,
                      child: Container(height: 5,width: 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey
                        ),))
                ]),
          ),

        ],
      ),
      //bottomNavigationBar: BNavBar(),
    );
  }
}
