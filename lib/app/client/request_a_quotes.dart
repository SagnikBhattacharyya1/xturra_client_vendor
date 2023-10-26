import 'package:client_app/app/client/quick_quotes.dart';
import 'package:client_app/app/widgets/code_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/stringmanager.dart';
import '../widgets/search_box.dart';

class RequestaQuotes extends StatefulWidget {
  const RequestaQuotes({super.key});

  @override
  State<RequestaQuotes> createState() => _RequestaQuotesState();
}

class _RequestaQuotesState extends State<RequestaQuotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar:  AppBar(
        backgroundColor: Colors.black45,
        title: Text(StringManager.enqText,style: GoogleFonts.ibmPlexSans(fontSize:18,color: Colors.white),),
        centerTitle: true,
        leading: IconButton( onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new),color: Colors.orangeAccent,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                child: SearchBox("Search Vendors")),
            Container(
              margin: EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on,size: 12,color: Colors.white,),
                  Text(StringManager.add2Text,style: GoogleFonts.ibmPlexSans(fontSize: 10,color: Colors.white),),
                  Icon(Icons.keyboard_arrow_down_sharp,size: 12,color: Colors.orangeAccent,)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left:5,right:5,top: 10),
              height: 120,width: 340,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(8.0)
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Row(children: [
                            Container(
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
                            SizedBox(width: 5,),
                            Text(StringManager.johnText,style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),)
                          ],),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/icons/gallery_icon.png"),fit: BoxFit.fitHeight),
                              ),
                              width: 18,
                              height: 18,),
                            SizedBox(width: 8,),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/icons/files.png"),fit: BoxFit.fitHeight),
                              ),
                              width: 18,
                              height: 18,)
                          ],),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.white,width: 0.2)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin:EdgeInsets.only(left:5),
                                child: Text(StringManager.carCarrierText,
                                  style: GoogleFonts.ibmPlexSans(fontSize: 11,color: Colors.grey),),
                              ),
                              Container(
                                  margin:EdgeInsets.only(right:5),
                                  child: Icon(Icons.keyboard_arrow_down_rounded,size: 15,color: Colors.orangeAccent,)),

                            ],),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 40,
                          width: 155,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.white,width: 0.2)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin:EdgeInsets.only(left:5),
                                child: Text(StringManager.selectVenText,
                                  style: GoogleFonts.ibmPlexSans(fontSize: 11,color: Colors.grey),),
                              ),
                              Container(
                                  margin:EdgeInsets.only(right:5),
                                  child: Icon(Icons.keyboard_arrow_down_rounded,size: 15,color: Colors.orangeAccent,)),

                            ],),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 340,
              height: 50,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey,width: 1.0)
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin:EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 1),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/icons/pick_up.png"),fit: BoxFit.cover),
                            ),
                            width: 18,
                            height: 18,),
                          SizedBox(width: 10,),
                          Text("Pick Up",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16),),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.orangeAccent,size: 15,)
                  )

                ],
              ),
            ),

            Stack(
              children:[
                Container(
               margin: EdgeInsets.only(top: 15,bottom: 15,left: 8,right: 8),
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 70,left: 10,right: 10),
                      width: 340,
                      height: 40,
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.blueGrey,width: 0.5)
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin:EdgeInsets.only(left: 10),
                              child: Row(
                                children: [

                                  SizedBox(width: 10,),
                                  Text("Full Name",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 14),),
                                ],
                              )),

                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:10,bottom:10,left: 10,right: 10),
                        child: PhoneTextF()),
                  ],
                ),
              ),
                Positioned(
                  left: 10,
                  top: 1,
                  child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 340,
                  height: 50,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey,width: 1.0)
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin:EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 2),
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("assets/icons/delivery_icon.png"),fit: BoxFit.cover),
                                ),
                                width: 18,
                                height: 18,),
                              SizedBox(width: 10,),
                              Text("Delivery",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16),),
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(right: 8),
                          child: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.orangeAccent,size: 24,)
                      )

                    ],
                  ),
                ),)
            ]),




            Container(
              margin: EdgeInsets.only(top: 15),
              width: 340,
              height: 50,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey,width: 1.0)
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin:EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/icons/gift_icon.png"),fit: BoxFit.cover),

                            ),
                          width: 18,
                          height: 18,),
                          SizedBox(width: 10,),
                          Text("Items*",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16),),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.orangeAccent,size: 15,)
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 340,
              height: 50,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey,width: 1.0)
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin:EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/icons/address.png"),fit: BoxFit.fitHeight),
                            ),
                            width: 18,
                            height: 18,),
                          SizedBox(width: 10,),
                          Text("Address/Time",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16),),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.orangeAccent,size: 15,)
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 340,
              height: 50,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey,width: 1.0)
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin:EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 3),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/icons/notes.png"),fit: BoxFit.cover),
                            ),
                            width: 17,
                            height: 17,),
                          SizedBox(width: 10,),
                          Text("Notes",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16),),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.orangeAccent,size: 15,)
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 340,
              height: 50,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey,width: 1.0)
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin:EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 2),
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/icons/access.png"),fit: BoxFit.cover),

                            ),
                            width: 18,
                            height: 18,),
                          SizedBox(width: 10,),
                          Text("Access",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 16),),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.arrow_forward_ios,color: Colors.orangeAccent,size: 15,)
                  )

                ],
              ),
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(top: 15,),
                width: 340,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.blue
                ),
                child: Center(child: Text("Submit",
                  style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15),)),
              ),
            ),
            SizedBox(height: 40,)



          ],
        ),
      ),
    );
  }
}
