import 'package:client_app/app/client/check_out_page.dart';
import 'package:client_app/app/widgets/search_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/stringmanager.dart';
import '../widgets/b_navbar.dart';
import '../widgets/dotted_divider.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text("Calender",style: GoogleFonts.ibmPlexSans(fontSize: 18,color: Colors.white),),
        leading:  IconButton( onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 12),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                image: DecorationImage(image: AssetImage("assets/images/person_1.jpg"),fit: BoxFit.cover)
            ),
          )],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
              child: SearchBox(StringManager.searchText)),

          Container(
            margin: EdgeInsets.only(left:10,right:10,top: 10,bottom: 10),
            width: 200,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5.0)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.arrow_back_ios_new_outlined,size: 12,color: Colors.white,),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5.0,
                  children: [
                    Text("Sa",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                    Text("23",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                  ],
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5.0,
                  children: [
                    Text("Sa",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                    Text("23",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                  ],
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5.0,
                  children: [
                    Text("Sa",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                    Text("23",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                  ],
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5.0,
                  children: [
                    Text("Sa",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                    Text("23",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                  ],
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5.0,
                  children: [
                    Text("Sa",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                    Text("23",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                  ],
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5.0,
                  children: [
                    Text("Sa",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                    Text("23",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                  ],
                ),
                Wrap(
                  direction: Axis.vertical,
                  spacing: 5.0,
                  children: [
                    Text("Sa",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                    Text("23",style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white),),
                  ],
                ),
                Icon(Icons.arrow_forward_ios,size: 12,color: Colors.white,),
              ],
            ),
          ),


          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckOutPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Stack(
                  children:[
                    Container(
                      margin:EdgeInsets.only(left: 8,right: 5),
                      child: Wrap(
                          children:[
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 5.0,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(StringManager.proNameTwoText,
                                          style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white60),),
                                        SizedBox(width: 5,),
                                        Container(width: 50,height: 18,
                                          decoration: BoxDecoration(
                                              color: Colors.white12,
                                              borderRadius: BorderRadius.circular(5.0)
                                          ),
                                          child: Center(child: Text("1 item",style: GoogleFonts.ibmPlexSans(fontSize: 10,color: Colors.white),)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.phone_android,size:18,color: Colors.white,),
                                      SizedBox(width: 5,),
                                      Text(StringManager.phoneNoText,style: GoogleFonts.ibmPlexSans(fontSize:12,color: Colors.white60),),
                                    ],),
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.mail,color: Colors.white,size: 18,),
                                        SizedBox(width: 6,),
                                        Text(StringManager.emailDemoText,
                                          style: GoogleFonts.ibmPlexSans(fontSize:12,color: Colors.white60),)

                                      ],),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left:6,top:10,right: 155),
                                child: DottedDivider()),
                            Container(
                              margin: EdgeInsets.only(left:3,top:10),
                              child: Row(children: [
                                Column(
                                  children: [
                                    Stack(children:[
                                      Icon(Icons.circle,color: Colors.white60,size: 18,),
                                      Positioned(
                                          left: 5,
                                          top: 5,
                                          child: CircleAvatar(radius: 4,backgroundColor: Colors.orangeAccent,))

                                    ]),
                                    Container(
                                        width: 1.0, // Thickness of the divider
                                        height: 24,
                                        color: Colors.black45, // Color of the dots
                                        child: ListView.separated(
                                            scrollDirection: Axis.vertical,
                                            itemCount: 10,
                                            separatorBuilder: (context,index){
                                              return SizedBox(height: 2,);
                                            },// Number of dots
                                            itemBuilder: (context, index) {
                                              return Container(
                                                width: 2,
                                                height: 2, // Width of each dot
                                                color: Colors.white60, // Color of the dots
                                              );
                                            })
                                    ),
                                    //Container(height:28,child: VerticalDivider()),
                                    Icon(Icons.place_outlined,color: Colors.white60,size: 18,),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10,top:5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:EdgeInsets.only(right: 30),
                                        child: Text(StringManager.placeOneText,
                                          style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),),
                                      ),
                                      Container(margin:EdgeInsets.only(right: 82),
                                          child: Text(StringManager.dateTimeText,
                                              style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 8))),
                                      SizedBox(height: 12),
                                      Container(
                                        margin: EdgeInsets.only(right: 30),
                                        child: Text(StringManager.placeOneText,
                                          style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),),
                                      ),
                                      Container(margin:EdgeInsets.only(right: 82),
                                          child: Text(StringManager.dateTimeText,
                                              style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 8))),
                                    ],),
                                )
                              ],),
                            ),
                          ]),
                    ),
                    Positioned(
                        left: 245,
                        child: Stack(
                          children:[
                            Container(width: 105,height: 165,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(image: AssetImage("assets/images/truck_1.jpg"),fit: BoxFit.cover),
                            ),
                          ),
                            Positioned(
                              top: 140,
                                left: 17,
                                child: Container(
                              height: 22,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.blue
                              ),
                                  child: Center(child: Text("Packing",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),)),
                            ))
                       ] ))
                  ]),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left:10,right:15,top: 10,bottom: 5),
              child: DottedDivider()),



          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckOutPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Stack(
                  children:[
                    Container(
                      margin:EdgeInsets.only(left: 8,right: 5),
                      child: Wrap(
                          children:[
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 5.0,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(StringManager.proNameTwoText,
                                          style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white60),),
                                        SizedBox(width: 5,),
                                        Container(width: 50,height: 18,
                                          decoration: BoxDecoration(
                                              color: Colors.white12,
                                              borderRadius: BorderRadius.circular(5.0)
                                          ),
                                          child: Center(child: Text("1 item",style: GoogleFonts.ibmPlexSans(fontSize: 10,color: Colors.white),)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.phone_android,size:18,color: Colors.white,),
                                      SizedBox(width: 5,),
                                      Text(StringManager.phoneNoText,style: GoogleFonts.ibmPlexSans(fontSize:12,color: Colors.white60),),
                                    ],),
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.mail,color: Colors.white,size: 18,),
                                        SizedBox(width: 6,),
                                        Text(StringManager.emailDemoText,
                                          style: GoogleFonts.ibmPlexSans(fontSize:12,color: Colors.white60),)

                                      ],),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left:6,top:10,right: 155),
                                child: DottedDivider()),
                            Container(
                              margin: EdgeInsets.only(left:3,top:10),
                              child: Row(children: [
                                Column(
                                  children: [
                                    Stack(children:[
                                      Icon(Icons.circle,color: Colors.white60,size: 18,),
                                      Positioned(
                                          left: 5,
                                          top: 5,
                                          child: CircleAvatar(radius: 4,backgroundColor: Colors.orangeAccent,))

                                    ]),
                                    Container(
                                        width: 1.0, // Thickness of the divider
                                        height: 24,
                                        color: Colors.black45, // Color of the dots
                                        child: ListView.separated(
                                            scrollDirection: Axis.vertical,
                                            itemCount: 10,
                                            separatorBuilder: (context,index){
                                              return SizedBox(height: 2,);
                                            },// Number of dots
                                            itemBuilder: (context, index) {
                                              return Container(
                                                width: 2,
                                                height: 2, // Width of each dot
                                                color: Colors.white60, // Color of the dots
                                              );
                                            })
                                    ),
                                    //Container(height:28,child: VerticalDivider()),
                                    Icon(Icons.place_outlined,color: Colors.white60,size: 18,),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10,top:5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:EdgeInsets.only(right: 30),
                                        child: Text(StringManager.placeOneText,
                                          style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),),
                                      ),
                                      Container(margin:EdgeInsets.only(right: 82),
                                          child: Text(StringManager.dateTimeText,
                                              style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 8))),
                                      SizedBox(height: 12),
                                      Container(
                                        margin: EdgeInsets.only(right: 30),
                                        child: Text(StringManager.placeOneText,
                                          style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),),
                                      ),
                                      Container(margin:EdgeInsets.only(right: 82),
                                          child: Text(StringManager.dateTimeText,
                                              style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 8))),
                                    ],),
                                )
                              ],),
                            ),
                          ]),
                    ),
                    Positioned(
                        left: 245,
                        child: Stack(
                            children:[
                              Container(width: 105,height: 165,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(image: AssetImage("assets/images/truck_1.jpg"),fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                  top: 140,
                                  left: 17,
                                  child: Container(
                                    height: 22,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: Colors.blue
                                    ),
                                    child: Center(child: Text("Packing",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),)),
                                  ))
                            ] ))
                  ]),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left:10,right:15,top: 10,bottom: 5),
              child: DottedDivider()),

          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckOutPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Stack(
                  children:[
                    Container(
                      margin:EdgeInsets.only(left: 8,right: 5),
                      child: Wrap(
                          children:[
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Wrap(
                                direction: Axis.vertical,
                                spacing: 5.0,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(StringManager.proNameTwoText,
                                          style: GoogleFonts.ibmPlexSans(fontSize: 16,color: Colors.white60),),
                                        SizedBox(width: 5,),
                                        Container(width: 50,height: 18,
                                          decoration: BoxDecoration(
                                              color: Colors.white12,
                                              borderRadius: BorderRadius.circular(5.0)
                                          ),
                                          child: Center(child: Text("1 item",style: GoogleFonts.ibmPlexSans(fontSize: 10,color: Colors.white),)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.phone_android,size:18,color: Colors.white,),
                                      SizedBox(width: 5,),
                                      Text(StringManager.phoneNoText,style: GoogleFonts.ibmPlexSans(fontSize:12,color: Colors.white60),),
                                    ],),
                                  Container(
                                    margin: EdgeInsets.only(left: 2),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.mail,color: Colors.white,size: 18,),
                                        SizedBox(width: 6,),
                                        Text(StringManager.emailDemoText,
                                          style: GoogleFonts.ibmPlexSans(fontSize:12,color: Colors.white60),)

                                      ],),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left:6,top:10,right: 155),
                                child: DottedDivider()),
                            Container(
                              margin: EdgeInsets.only(left:3,top:10),
                              child: Row(children: [
                                Column(
                                  children: [
                                    Stack(children:[
                                      Icon(Icons.circle,color: Colors.white60,size: 18,),
                                      Positioned(
                                          left: 5,
                                          top: 5,
                                          child: CircleAvatar(radius: 4,backgroundColor: Colors.orangeAccent,))

                                    ]),
                                    Container(
                                        width: 1.0, // Thickness of the divider
                                        height: 24,
                                        color: Colors.black45, // Color of the dots
                                        child: ListView.separated(
                                            scrollDirection: Axis.vertical,
                                            itemCount: 10,
                                            separatorBuilder: (context,index){
                                              return SizedBox(height: 2,);
                                            },// Number of dots
                                            itemBuilder: (context, index) {
                                              return Container(
                                                width: 2,
                                                height: 2, // Width of each dot
                                                color: Colors.white60, // Color of the dots
                                              );
                                            })
                                    ),
                                    //Container(height:28,child: VerticalDivider()),
                                    Icon(Icons.place_outlined,color: Colors.white60,size: 18,),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10,top:5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin:EdgeInsets.only(right: 30),
                                        child: Text(StringManager.placeOneText,
                                          style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),),
                                      ),
                                      Container(margin:EdgeInsets.only(right: 82),
                                          child: Text(StringManager.dateTimeText,
                                              style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 8))),
                                      SizedBox(height: 12),
                                      Container(
                                        margin: EdgeInsets.only(right: 30),
                                        child: Text(StringManager.placeOneText,
                                          style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),),
                                      ),
                                      Container(margin:EdgeInsets.only(right: 82),
                                          child: Text(StringManager.dateTimeText,
                                              style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 8))),
                                    ],),
                                )
                              ],),
                            ),
                          ]),
                    ),
                    Positioned(
                        left: 245,
                        child: Stack(
                            children:[
                              Container(width: 105,height: 165,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: DecorationImage(image: AssetImage("assets/images/truck_1.jpg"),fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                  top: 140,
                                  left: 17,
                                  child: Container(
                                    height: 22,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: Colors.blue
                                    ),
                                    child: Center(child: Text("Packing",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),)),
                                  ))
                            ] ))
                  ]),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left:10,right:15,top: 10,bottom: 5),
              child: DottedDivider()),

        ],
      ),
      bottomNavigationBar: BNavBar(),
    );
  }
}
