import 'package:client_app/app/client/request_a_quotes.dart';
import 'package:client_app/app/widgets/search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/stringmanager.dart';

class PlusIcon extends StatefulWidget {
  const PlusIcon({super.key});

  @override
  State<PlusIcon> createState() => _PlusIconState();
}

class _PlusIconState extends State<PlusIcon> {
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
              height: 280,width: 340,
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
                              height: 18,),
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
                  Container(
                    margin: EdgeInsets.only(top:8,right: 4),
                    height: 100,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.white,width: 0.2),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 5,left: 4),
                        child: Text(StringManager.whatServText,style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.grey),)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8,top: 10),
                    child: Row(children: [
                      Container(
                       height: 35,
                       width: 125,
                       decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(5.0),
                       ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5,right: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.0),
                                image: DecorationImage(image: AssetImage("assets/images/bike.jpg"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Text(StringManager.proNameOneText,
                                style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 10),),
                            ),
                            Stack(
                              children:[ 
                                Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                                Positioned(child: Icon(Icons.close,size: 10,))
                           ] ),
                            
                          ],
                        ),
                     ),
                      SizedBox(width: 5,),
                      Container(
                        height: 35,
                        width: 125,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5,right: 5),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  image: DecorationImage(image: AssetImage("assets/images/bike.jpg"),fit: BoxFit.cover)
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Text(StringManager.proNameOneText,
                                style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 10),),
                            ),
                            Stack(
                                children:[
                                  Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Positioned(child: Icon(Icons.close,size: 10,))
                                ] ),

                          ],
                        ),
                      ),
                    ],),
                  )
                ],
              ),
             ),
            Container(
              margin: EdgeInsets.only(left:5,right:5,top: 10),
              height: 200,width: 340,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(8.0)
              ),
              child: Column(
                children: [
                  Container(
                    margin:EdgeInsets.only(top: 10,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin:EdgeInsets.only(left: 12),
                            child: Text(StringManager.addItText,style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),)),
                        Container(
                          margin: EdgeInsets.only(right: 12),
                          child: InkWell(child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5.0)

                          ),
                            child: Row(
                              children: [
                                SizedBox(width:2),
                                Icon(Icons.add,color: Colors.white,size: 15,),
                                SizedBox(width: 2,),
                                Text("Add",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),)
                              ],
                            ),
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15,),
                    width: 320,
                    height: 40,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey,width: 1.0)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin:EdgeInsets.only(left: 10),
                            child: Text("Chair",style: GoogleFonts.ibmPlexSans(color: Colors.grey,fontSize: 15),)),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Icon(Icons.add,color: Colors.white,size: 12,),
                              SizedBox(width: 4,),
                              Text("6",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),),
                              SizedBox(width: 4,),
                              Icon(Icons.remove,color: Colors.white,size: 12,)
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 320,
                    height: 40,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.grey,width: 1.0)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin:EdgeInsets.only(left: 10),
                            child: Text("Chair",style: GoogleFonts.ibmPlexSans(color: Colors.grey,fontSize: 15),)),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Icon(Icons.add,color: Colors.white,size: 12,),
                              SizedBox(width: 4,),
                              Text("6",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),),
                              SizedBox(width: 4,),
                              Icon(Icons.remove,color: Colors.white,size: 12,)
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: 320,
                    height: 40,
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.grey,width: 1.0)
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin:EdgeInsets.only(left: 10),
                            child: Text("Chair",style: GoogleFonts.ibmPlexSans(color: Colors.grey,fontSize: 15),)),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Icon(Icons.add,color: Colors.white,size: 12,),
                              SizedBox(width: 4,),
                              Text("6",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),),
                              SizedBox(width: 4,),
                              Icon(Icons.remove,color: Colors.white,size: 12,)
                            ],
                          ),
                        )

                      ],
                    ),
                  ),


                ],
              ),

            ),
            Container(
              margin: EdgeInsets.only(top: 15,left: 10,right: 10),
              child: Row(children: [
                InkWell(
                  child: Container(
                    height: 40,
                    width: 165,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(child: Text(StringManager.reqQuoText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 13),)),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  child: Container(
                    height: 40,
                    width: 165,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.white,width: 0.5)
                    ),
                    child: Center(child: Text(StringManager.quickQuoText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 13),)),
                  ),
                ),
              ],),
            ),
            SizedBox(height: 40,)

          ],
        ),
      ),
    );
  }
}
