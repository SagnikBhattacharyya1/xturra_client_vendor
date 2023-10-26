import 'package:client_app/app/client/vendordetails_about.dart';
import 'package:client_app/app/client/vendordetails_contact.dart';
import 'package:client_app/app/client/vendordetails_files.dart';
import 'package:client_app/app/client/vendordetails_jobs.dart';
import 'package:client_app/app/client/vendordetails_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/stringmanager.dart';

class VDphotos extends StatefulWidget {
  const VDphotos({super.key});

  @override
  State<VDphotos> createState() => _VDphotosState();
}

class _VDphotosState extends State<VDphotos> {
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

  //switch essentials:
  bool isSelected=false;
  bool isSelected1=false;
  bool isSelected2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
          backgroundColor: Colors.black45,
          leading: IconButton( onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.orangeAccent,)),

          actions:[
            Wrap(
                direction: Axis.horizontal,
                spacing: 0.5,
                children:[
                  IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.screen_share_outlined,color: Colors.white,)),
                  SizedBox(width: 5,),
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
                  )
                ]),
          ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top:5,left: 15),
              child: Text(StringManager.transAusText,
                style: GoogleFonts.ibmPlexSans(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w700),),
            ),
            Container(
                margin: EdgeInsets.only(left: 5),
                child: Text(StringManager.subAusText,style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white60),)),
            Container(
              margin: EdgeInsets.only(top:5,left: 100,bottom: 15),
              child: Row(
                children: [
                  Container(width: 38,height: 16,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(2.0)
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Icon(Icons.star,size: 10,color: Colors.white,),
                          SizedBox(width: 1.0,),
                          Text("4.5",style: GoogleFonts.ibmPlexSans(fontSize:10,color: Colors.white),)
                        ],
                      ),
                    ),

                  ),
                  SizedBox(width: 10,),
                  Text(StringManager.raterevText,style: GoogleFonts.ibmPlexSans(fontSize: 10,color: Colors.white),)

                ],),
            ),
            Container (
              width: 385.0,
              height: 65,// Set the width of the search box
              padding: EdgeInsets.all(6.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  //Row is used in prefix icon
                  prefixIcon: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 1),
                          height: 52,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
                              color: Colors.white60
                          ),
                          child: Stack(children: [
                            Container(height: 35,width: 35,
                              margin: EdgeInsets.only(top: 8,left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  shape: BoxShape.circle
                              ),
                            ),
                            Positioned(
                                top: 15,
                                left: 18,
                                child: Icon(Icons.percent_rounded, color: Colors.white,size: 20))
                          ])
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10,top: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(StringManager.discountText,
                              style: GoogleFonts.ibmPlexSans(color: Colors.orangeAccent,fontSize: 12,fontWeight: FontWeight.w500),),
                            SizedBox(height: 3,),
                            Text(StringManager.useCodeText,style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 12),)
                          ],
                        ),
                      ),
                    ],
                  ),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 15),
                        child: Container(
                          width: 1.0,
                          height: 40,// Width of the divider
                          color: Colors.grey, // Divider color
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:1,right: 18,top: 15),
                        child: Column(
                          children: [
                            Text("1/7",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),),
                            SizedBox(height: 5,),
                            Row(children: [
                              CircleAvatar(backgroundColor: Colors.redAccent,radius: 2,),
                              CircleAvatar(backgroundColor: Colors.white60,radius: 2,),
                              CircleAvatar(backgroundColor: Colors.white60,radius: 2,)
                            ],)

                          ],
                        ),
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                  ),
                ),
              ),
            ),
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
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin:EdgeInsets.only(left: 12,top: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Claim Your",style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white),),
                        Text("Free Consultation",style: GoogleFonts.ibmPlexSans(fontSize: 14,color: Colors.white))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 12,),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0)
                    ),

                    height: 30,
                    width: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.perm_phone_msg_outlined,color: Colors.white,size: 20,),
                        Text("Claim Now",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 14),)
                      ],),)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 10),
              height:70,
              width:350 ,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.white60,width: 0.5)
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/si.jpeg"),fit: BoxFit.fitWidth),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Colors.white,width: 0.1)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 4.0,
                      children: [
                        Text("Send Requirements",style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white),),
                        Text("Send Attachments",style: GoogleFonts.ibmPlexSans(fontSize: 10,color: Colors.orangeAccent),)
                      ],),
                  ),
                  SizedBox(width: 78,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined,size: 18,color: Colors.orangeAccent,))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5),
              child:Wrap(
                direction: Axis.horizontal,
                spacing: 10.0,
                children: [
                  InkWell(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VDServices()),
                        );
                      },
                      child: Text(StringManager.servicesText,style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white60),)),
                  InkWell(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VDabout()),
                        );
                      },
                      child: Text(StringManager.abouText,style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white60),)),
                  InkWell(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VDphotos()),
                        );
                      },
                      child: Text(StringManager.photosText,style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white60),)),
                  InkWell(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VDfiles()),
                        );
                      },
                      child: Text(StringManager.filesText,style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white60),)),
                  InkWell(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VDjobs()),
                        );
                      },
                      child: Text(StringManager.jobsText,style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white60),)),
                  InkWell(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VDcontacts()),
                        );
                      },
                      child: Text(StringManager.contText,style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white60),)),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: 350,
                  height: 1,
                  color: Colors.white60,
                ),
                Positioned(
                    left: 130,
                    child: Container(
                      width: 60,
                      height: 1,
                      color: Colors.blue,
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 2,right: 2,top: 10,bottom: 10),
              child: Row(
                children: [
                  Row(
                      children: [
                        Transform.scale(
                          scale: 0.7,
                          child: Switch(
                            value: isSelected,
                            onChanged: (value){
                              setState(() {
                                isSelected=!isSelected;
                              });
                            },
                            inactiveTrackColor: Colors.white10,
                            inactiveThumbColor: Colors.white,
                            activeTrackColor: Colors.blue,

                          ),
                        ),
                        Text("Commercial",
                          style: GoogleFonts.ibmPlexSans(fontSize:13,color: Colors.white,fontWeight: FontWeight.w200),)
                      ]),
                  Row(
                      children:[
                        Transform.scale(
                          scale: 0.7,
                          child:Switch(
                            value: isSelected1,
                            onChanged: (value){
                              setState(() {
                                isSelected1=!isSelected1;
                              });
                            },
                            inactiveTrackColor: Colors.white10,
                            inactiveThumbColor: Colors.white,
                            activeTrackColor: Colors.blue,

                          ),
                        ),
                        Text("Interstate",
                            style: GoogleFonts.ibmPlexSans(fontSize:13,color: Colors.white,fontWeight: FontWeight.w200))
                      ]),
                  Row(
                      children:[
                        Transform.scale(
                          scale: 0.7,
                          child: Switch(
                            value: isSelected2,
                            onChanged: (value){
                              setState(() {
                                isSelected2=!isSelected2;
                              });
                            },
                            inactiveTrackColor: Colors.white10,
                            inactiveThumbColor: Colors.white,
                            activeTrackColor: Colors.blue,

                          ),
                        ),
                        Text("Local",
                            style: GoogleFonts.ibmPlexSans(fontSize:13,color: Colors.white,fontWeight: FontWeight.w200))
                      ]),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,bottom: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 130,
                    height: 1,
                    color: Colors.white60,
                  ),
                  Text(StringManager.bigPhotosText,
                    style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20),),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 130,
                    height: 1,
                    color: Colors.white60,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VDfiles()),
                );
              },
              child: Column(

                children:[
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 200,
                      height: 188,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.white,width: 0.3),
                        image: DecorationImage(image: AssetImage('assets/images/bike2.jpg'),fit: BoxFit.cover)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Wrap(
                        direction: Axis.vertical,
                        spacing: 10.0,
                        children: [
                          Container(
                            width: 110,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.white,width: 0.3),
                                image: DecorationImage(image: AssetImage('assets/images/bike2.jpg'),fit: BoxFit.cover)
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.white,width: 0.3),
                                image: DecorationImage(image: AssetImage('assets/images/bike2.jpg'),fit: BoxFit.cover)
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                  SizedBox(height: 12.0,),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.white,width: 0.3),
                              image: DecorationImage(image: AssetImage('assets/images/bike2.jpg'),fit: BoxFit.cover)
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.white,width: 0.3),
                              image: DecorationImage(image: AssetImage('assets/images/bike2.jpg'),fit: BoxFit.cover)
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(color: Colors.white,width: 0.3),
                              image: DecorationImage(image: AssetImage('assets/images/bike2.jpg'),fit: BoxFit.cover)
                          ),
                        ),
                    ],),
                  )
              ]),
            ),


            Container(
              margin: EdgeInsets.only(top: 20),
              child: InkWell(
                onTap: (){
                  showDialog(context: context, builder: (context){
                    return Container(
                      child: AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          backgroundColor: Colors.black,
                          title: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 60,
                                  height: 1,
                                  color: Colors.white60,
                                ),
                                Text("SERVICES",
                                  style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20),),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  width: 60,
                                  height: 1,
                                  color: Colors.white60,
                                ),
                              ],
                            ),
                          ),
                          content: Container(


                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:EdgeInsets.only(top:30),
                                    child: Text("Corporate Shifting",
                                      style: GoogleFonts.ibmPlexSans(color: Colors.orangeAccent,fontSize: 15),),
                                  ),
                                  Container(
                                    margin:EdgeInsets.only(top:10),
                                    child: Text("International Moving",
                                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15),),
                                  ),
                                  Container(
                                    margin:EdgeInsets.only(top:10),
                                    child: Text("Sculpture Relocation",
                                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15),),
                                  ),
                                  Container(
                                    margin:EdgeInsets.only(top:10),
                                    child: Text("Household Shifting",
                                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15),),
                                  ),
                                  Container(
                                    margin:EdgeInsets.only(top:10),
                                    child: Text("Car Carrier",
                                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15),),
                                  ),
                                  Container(
                                    margin:EdgeInsets.only(top:10),
                                    child: Text("Storage",
                                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15),),
                                  ),
                                  Container(
                                    margin:EdgeInsets.only(top:10),
                                    child: Text("Courier",
                                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15),),
                                  ),
                                  Container(
                                    margin:EdgeInsets.only(top:10),
                                    child: Text("Moving",
                                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15),),
                                  ),

                                ],
                              ),
                            ),
                          )
                      ),);
                  });
                },
                child: Container(
                  width: 95,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 7,),
                      Icon(Icons.wallet_giftcard_rounded,color: Colors.white,size: 18,),
                      SizedBox(width: 5,),
                      Text(StringManager.servicesText,style: GoogleFonts.ibmPlexSans(color:Colors.white),)
                    ],
                  ),

                ),
              ),
            ),
            SizedBox(height: 100,)

          ],
        ),
      ),
    );
  }
}
