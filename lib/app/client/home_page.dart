import 'package:client_app/app/client/browse_services.dart';
import 'package:client_app/app/client/promotion_page.dart';
import 'package:client_app/app/client/vendordetails_service.dart';
import 'package:client_app/app/widgets/b_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/stringmanager.dart';
import '../widgets/search_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> imageAssets = [
    'assets/images/train_1.png',
    'assets/images/train_1.png',
    'assets/images/train_1.png',
    'assets/images/train_1.png',
    // Add more asset image paths
  ];
  final List<String> trendButtons = ["Frieght", "Warehousing", "Storage","Summer","Ethnic"];
  final List<String> trendButton= ["Murphy Dietrich", "Ashok LeyLand","American Express","Murphy Dietrich","Murphy Dietrich"];
  List<bool> isCheckedList = [false, false, false, false, false];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            margin: EdgeInsets.only(right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 17.0),
                      child: Icon(Icons.location_on_outlined, color: Colors.white,),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("Indonesia", style: TextStyle(fontWeight: FontWeight.w900,
                                    color: Colors.white),),
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_down, color: Colors.orange),
                          ],
                        ),
                        Text("Lakeroad", style:  TextStyle(fontSize: 12,
                            color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 140,),
                    Padding(
                      padding:  EdgeInsets.only(left:30,bottom: 10),
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
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top:5,left: 12,right: 10,),
                  child: SearchBox(StringManager.searchText)),
              Container(
                margin: EdgeInsets.only(left: 9),
                child: Stack(
                    children:[
                      Container(
                        height: 35,
                        width: 400,
                        margin: EdgeInsets.only(left: 60,bottom: 10,top: 15),
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
              Stack(
                  children:[
                    Column(
                      children: [
                        InkWell(
                          child: CarouselSlider(
                            items: imageAssets.map((imagePath) {
                              return Builder(
                                builder: (BuildContext context,) {
                                  return Container(

                                    width: MediaQuery.of(context).size.width,
                                    //margin: EdgeInsets.symmetric(horizontal:20,),
                                    margin: EdgeInsets.only(left: 20, right: 12),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Image.asset(
                                          imagePath, fit: BoxFit.fill,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                            carouselController: carouselController,
                            options: CarouselOptions(
                              scrollPhysics: const BouncingScrollPhysics(),
                              aspectRatio: 2,
                              viewportFraction: 1,
                              height:125,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 4),
                              enlargeCenterPage: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 20,)
                      ],
                    ),
                    Positioned(
                        top: 135,
                        left: 150,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imageAssets.asMap().entries.map((entry){
                            print(entry);
                            print(entry.key);
                            return GestureDetector(
                              onTap: () => carouselController.animateToPage(entry.key),
                              child: Container(
                                width: currentIndex==entry.key?17:5,//For different screens different dot size for active it will be bigger
                                height:5.0,
                                margin: EdgeInsets.symmetric(horizontal: 2.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: currentIndex==entry.key
                                        ?Colors.red:Colors.white60
                                ),
                              ),
                            );
                          }).toList(),
                        )
                    )
                  ]
              ),
              Container(
               margin: EdgeInsets.only(),
               child: Row(
                 children: [
                   Container(
                     margin: EdgeInsets.only(right: 10),
                     width: 100,
                     height: 1,
                     color: Colors.white60,
                   ),
                   Text("TOP BRANDS",
                     style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 22),),
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
                height: 50,
                width: 400,
                margin: EdgeInsets.only(left: 10,bottom: 10,top: 10),
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
                          side: BorderSide(color: Colors.white,width: 0.4),
                          minimumSize: Size(70, 5),
                          //maximumSize: Size(75, 6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        child: Text(trendButton[index],style: GoogleFonts.ibmPlexSans(
                          fontSize: 10,
                          color: Colors.white,

                        ),),
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 87,
                      height: 1,
                      color: Colors.white60,
                    ),
                    Text("RECOMMENDED",
                      style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 22),),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 87,
                      height: 1,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10,left: 10),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 110,
                          decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5.0),
                        ),),
                        SizedBox(height: 5,),
                        Text(StringManager.proNameOneText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),),
                        Text("Frieght",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 10),)
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 110,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5.0),
                          ),),
                        SizedBox(height: 5,),
                        Text(StringManager.proNameOneText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),),
                        Text("Frieght",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 10),)
                      ],
                    ),
                    SizedBox(width: 5,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 110,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5.0),
                          ),),
                        SizedBox(height: 5,),
                        Text(StringManager.proNameOneText,style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 12),),
                        Text("Frieght",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 10),)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 120,
                      height: 1,
                      color: Colors.white60,
                    ),
                    Text("TOP PICS",
                      style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 22),),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 120,
                      height: 1,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10,left: 5),
                child: Row(
                  children: [
                    Container(
                      width: 170,
                      height: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(width: 8,),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Text(StringManager.proNameOneText,
                          style: GoogleFonts.ibmPlexSans(fontSize:18,color:Colors.white,fontWeight: FontWeight.w500),),
                        Row(children: [
                          Icon(Icons.location_on,size:16,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("Street No 4,EN Block",style: GoogleFonts.ibmPlexSans(fontSize:12,color: Colors.white60),)
                        ],),
                        Row(children: [
                          Icon(Icons.block_rounded,size:16,color: Colors.orange,),
                          SizedBox(width: 5,),
                          Text("40% Off",style: GoogleFonts.ibmPlexSans(color:Colors.yellow,fontSize: 12),),
                          SizedBox(width: 5,),
                          Container(width:40,height:20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color:Colors.blueGrey,
                            ),
                            
                            child: Center(
                              child: Text("Frieght",
                                style: GoogleFonts.ibmPlexSans(fontSize: 10),),
                            ),)
                        ],)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10,left: 5),
                child: Row(
                  children: [
                    Container(
                      width: 170,
                      height: 85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(width: 8,),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Text(StringManager.proNameOneText,
                          style: GoogleFonts.ibmPlexSans(fontSize:18,color:Colors.white,fontWeight: FontWeight.w500),),
                        Row(children: [
                          Icon(Icons.location_on,size:16,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("Street No 4,EN Block",style: GoogleFonts.ibmPlexSans(fontSize:12,color: Colors.white60),)
                        ],),
                        Row(children: [
                          Icon(Icons.block_rounded,size:16,color: Colors.orange,),
                          SizedBox(width: 5,),
                          Text("40% Off",style: GoogleFonts.ibmPlexSans(color:Colors.yellow,fontSize: 12),),
                          SizedBox(width: 5,),
                          Container(width:65,height:20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color:Colors.blueGrey,
                            ),

                            child: Center(
                              child: Text("Warehousing",
                                style: GoogleFonts.ibmPlexSans(fontSize: 10),),
                            ),)
                        ],)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10,left: 5),
                child: Row(
                  children: [
                    Container(
                      width: 170,
                      height: 85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(width: 8,),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Text(StringManager.proNameOneText,
                          style: GoogleFonts.ibmPlexSans(fontSize:18,color:Colors.white,fontWeight: FontWeight.w500),),
                        Row(children: [
                          Icon(Icons.location_on,size:16,color: Colors.white,),
                          SizedBox(width: 5,),
                          Text("Street No 4,EN Block",style: GoogleFonts.ibmPlexSans(fontSize:12,color: Colors.white60),)
                        ],),
                        Row(children: [
                          Icon(Icons.block_rounded,size:16,color: Colors.orange,),
                          SizedBox(width: 5,),
                          Text("40% Off",style: GoogleFonts.ibmPlexSans(color:Colors.yellow,fontSize: 12),),
                          SizedBox(width: 5,),
                          Container(width:80,height:20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color:Colors.blueGrey,
                            ),

                            child: Center(
                              child: Text("Small Deliveries",
                                style: GoogleFonts.ibmPlexSans(fontSize: 10),),
                            ),)
                        ],)
                      ],
                    )
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
                margin: EdgeInsets.only(top: 15),
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
                            width: 320,
                            height: 120,
                            decoration: BoxDecoration(
                              //color: Colors.red,
                              image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover),
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
                            width: 300,
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VDServices()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
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
                              width: 320,
                              height: 120,
                              decoration: BoxDecoration(
                                //color: Colors.red,
                                image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover),
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
                              width: 300,
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
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VDServices()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15),
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
                              width: 320,
                              height: 120,
                              decoration: BoxDecoration(
                                //color: Colors.red,
                                image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover),
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
                              width: 300,
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

              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 128,
                      height: 1,
                      color: Colors.white60,
                    ),
                    Text(StringManager.storiesText,
                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20),),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 128,
                      height: 1,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                        children:[
                          Container(
                            width:110,
                            height: 140,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.white,width: 0.4),
                            ),
                          ),
                          Positioned(
                              top: 60,
                              left: 45,
                              child: Icon(Icons.play_circle,color: Colors.white,)),
                        ]),
                    Stack(
                        children:[
                          Container(
                            width:110,
                            height: 140,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.white,width: 0.4),
                            ),
                          ),
                          Positioned(
                              top: 60,
                              left: 45,
                              child: Icon(Icons.play_circle,color: Colors.white,)),
                        ]),
                    Stack(
                        children:[
                          Container(
                            width:110,
                            height: 140,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: Colors.white,width: 0.4),
                            ),
                          ),
                          Positioned(
                              top: 60,
                              left: 45,
                              child: Icon(Icons.play_circle,color: Colors.white,)),
                        ]),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 110,
                      height: 1,
                      color: Colors.white60,
                    ),
                    Text(StringManager.topOffText,
                      style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20),),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 110,
                      height: 1,
                      color: Colors.white60,
                    ),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 1200,
                margin: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trendButton.length,
                  itemBuilder: (context, index) {
                    return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.black45,
                                  border: Border.all(color: Colors.white,width: 0.5)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin:EdgeInsets.only(bottom:20),
                                    child: Wrap(
                                      direction:Axis.vertical,
                                      spacing:5.0,
                                      //crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(trendButton[index],style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white),),
                                        Text("Frieght",style: GoogleFonts.ibmPlexSans(fontSize:10,color: Colors.white60),),
                                        Row(
                                          children: [
                                            Icon(Icons.block,size:12,color: Colors.orangeAccent,),
                                            SizedBox(width: 10,),
                                            Text(StringManager.discText,style: GoogleFonts.ibmPlexSans(color: Colors.orangeAccent,fontSize: 8),),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Container(
                                    height: 110,
                                    width: 210,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/images/images.jpg"),fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(8.0)
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              top:2,
                              left:102,
                              child: Stack(
                                  children:[
                                    Container(
                                        decoration:BoxDecoration(
                                          border: Border.all(color: Colors.white,width: 1.0),
                                          shape:BoxShape.circle,
                                        ),
                                        child: CircleAvatar(radius: 5,backgroundColor: Colors.black,)),
                                    Positioned(
                                        bottom:2,
                                        right:0.1,
                                        left:0.1,

                                        child:  CircleAvatar(radius: 8,backgroundColor: Colors.black,))
                                  ])),
                          Positioned(
                              top:97,
                              left:102,
                              child: Stack(
                                  children:[
                                    Container(
                                        decoration:BoxDecoration(
                                          border: Border.all(color: Colors.white,width: 1.0),
                                          shape:BoxShape.circle,
                                        ),
                                        child: CircleAvatar(radius: 5,backgroundColor: Colors.black,)),
                                    Positioned(
                                        top:2.5,
                                        right:0.1,
                                        left:0.1,

                                        child:  CircleAvatar(radius: 8,backgroundColor: Colors.black,))
                                  ])),
                          Positioned(
                              left: 95,
                              bottom:102,
                              child: Container(height: 10,width: 20,color: Colors.black,)),
                          Positioned(
                              left: 95,
                              top:102,
                              child: Container(height: 10,width: 20,color: Colors.black,)),
                        ]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
     // bottomNavigationBar: BNavBar(),
    );
  }
}
