import 'package:client_app/app/data/stringmanager.dart';
import 'package:client_app/app/widgets/dotted_divider.dart';
import 'package:client_app/app/widgets/search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/b_navbar.dart';
import 'notifications_page.dart';
import 'offer_page.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Messages",style: GoogleFonts.ibmPlexSans(fontSize: 18,color: Colors.white),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Container(
          margin: EdgeInsets.only(right: 25),
            child:  IconButton( onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new_outlined))
        ),
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
                      color: Colors.orangeAccent,
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
            margin: EdgeInsets.only(top: 15,left: 15),
            child: Stack(
              children:[
                Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/images/person_2.png"),fit: BoxFit.cover)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(StringManager.message1Text,
                        style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                      Text(StringManager.message2Text,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: GoogleFonts.ibmPlexSans(
                          fontSize: 12,
                          color: Colors.grey,
                        ),)
                    ],),
                  )
                ],
              ),
                Positioned(
                  top: 7,
                    left: 305,
                    child: Text("5 min",
                  style: GoogleFonts.ibmPlexSans(
                    fontSize: 10,
                    color: Colors.grey
                  ),)),
                Positioned(
                  top: 35,
                    left: 310,
                    child: Container(height: 15,width: 15,
                  decoration: BoxDecoration(color: Colors.green,
                  borderRadius: BorderRadius.circular(2.0)),
                child: Center(child: Text("1",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 10),)),))
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top:5,left: 15,right: 15),
              child: DottedDivider()),

          Container(
            margin: EdgeInsets.only(top: 15,left: 15),
            child: Stack(
                children:[
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("assets/images/person_3.png"),fit: BoxFit.cover)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringManager.message1Text,
                              style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                            Text(StringManager.message2Text,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: GoogleFonts.ibmPlexSans(
                                fontSize: 12,
                                color: Colors.grey,
                              ),)
                          ],),
                      )
                    ],
                  ),
                  Positioned(
                      top: 7,
                      left: 305,
                      child: Text("5 min",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 10,
                            color: Colors.grey
                        ),)),
                  Positioned(
                      top: 35,
                      left: 310,
                      child: Container(height: 15,width: 15,
                        decoration: BoxDecoration(color: Colors.green,
                            borderRadius: BorderRadius.circular(2.0)),
                        child: Center(child: Text("1",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 10),)),))
                ]),
          ),
          Container(
              margin: EdgeInsets.only(top:5,left: 15,right: 15),
              child: DottedDivider()),

          Container(
            margin: EdgeInsets.only(top: 15,left: 15),
            child: Stack(
                children:[
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("assets/images/person_4.png"),fit: BoxFit.cover)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringManager.message1Text,
                              style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                            Text(StringManager.message2Text,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: GoogleFonts.ibmPlexSans(
                                fontSize: 12,
                                color: Colors.grey,
                              ),)
                          ],),
                      )
                    ],
                  ),
                  Positioned(
                      top: 7,
                      left: 305,
                      child: Text("5 min",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 10,
                            color: Colors.grey
                        ),)),
                  Positioned(
                      top: 35,
                      left: 310,
                      child: Container(height: 15,width: 15,
                        decoration: BoxDecoration(color: Colors.green,
                            borderRadius: BorderRadius.circular(2.0)),
                        child: Center(child: Text("1",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 10),)),))
                ]),
          ),
          Container(
              margin: EdgeInsets.only(top:5,left: 15,right: 15),
              child: DottedDivider()),

          Container(
            margin: EdgeInsets.only(top: 15,left: 15),
            child: Stack(
                children:[
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("assets/images/person_2.png"),fit: BoxFit.cover)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringManager.message1Text,
                              style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                            Text(StringManager.message2Text,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: GoogleFonts.ibmPlexSans(
                                fontSize: 12,
                                color: Colors.grey,
                              ),)
                          ],),
                      )
                    ],
                  ),
                  Positioned(
                      top: 7,
                      left: 305,
                      child: Text("5 min",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 10,
                            color: Colors.grey
                        ),)),
                  Positioned(
                      top: 35,
                      left: 310,
                      child: Container(height: 15,width: 15,
                        decoration: BoxDecoration(color: Colors.green,
                            borderRadius: BorderRadius.circular(2.0)),
                        child: Center(child: Text("1",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 10),)),))
                ]),
          ),
          Container(
              margin: EdgeInsets.only(top:5,left: 15,right: 15),
              child: DottedDivider()),

          Container(
            margin: EdgeInsets.only(top: 15,left: 15),
            child: Stack(
                children:[
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("assets/images/person_3.png"),fit: BoxFit.cover)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringManager.message1Text,
                              style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                            Text(StringManager.message2Text,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: GoogleFonts.ibmPlexSans(
                                fontSize: 12,
                                color: Colors.grey,
                              ),)
                          ],),
                      )
                    ],
                  ),
                  Positioned(
                      top: 7,
                      left: 305,
                      child: Text("5 min",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 10,
                            color: Colors.grey
                        ),)),
                  Positioned(
                      top: 35,
                      left: 310,
                      child: Container(height: 15,width: 15,
                        decoration: BoxDecoration(color: Colors.green,
                            borderRadius: BorderRadius.circular(2.0)),
                        child: Center(child: Text("1",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 10),)),))
                ]),
          ),
          Container(
              margin: EdgeInsets.only(top:5,left: 15,right: 15),
              child: DottedDivider()),
          SizedBox(height: 30,)
        ],
      ),
      //bottomNavigationBar: BNavBar(),
    );
  }
}
