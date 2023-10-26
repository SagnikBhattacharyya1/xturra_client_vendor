import 'package:client_app/app/client/history.dart';
import 'package:client_app/app/client/quotation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/stringmanager.dart';
import 'order.dart';

class ClientOffer extends StatefulWidget {
  const ClientOffer({super.key});

  @override
  State<ClientOffer> createState() => _ClientOfferState();
}

class _ClientOfferState extends State<ClientOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Column(
              children: [
                Row(children: [
                  Icon(Icons.arrow_back_ios_new_outlined,color: Colors.orangeAccent,size: 15,),
                  Text("Offers", style: GoogleFonts.ibmPlexSans(color: Colors.white,
                      fontWeight: FontWeight.w600,fontSize: 18),)
                ],),
                SizedBox(height: 10,),
                Container (
                  width: 320.0,
                  height: 53,// Set the width of the search box
                  padding: EdgeInsets.all(6.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0), //
                      prefixIcon: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(Icons.search, color: Colors.white,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text("Search Vendors", style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(right: 3),
                            child: Container(
                              width: 1.0,
                              height: 30,// Width of the divider
                              color: Colors.grey, // Divider color
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(6),
                            child: Icon(Icons.mic_none_outlined, color: Colors.white),
                          ),
                        ],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Container(color: Colors.black,
          child: Column(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 310,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/images/maps.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 30,),
                  Text("Offers", style: TextStyle(color: Colors.blue,
                      fontSize: 15),),
                  SizedBox(width: 30),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Quotation(),));
                    },
                    child: Text("Quotation", style: TextStyle(color: Colors.white,
                        fontSize: 15)),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Order() ,));
                    },
                    child: Text("Orders", style: TextStyle(color: Colors.white,
                        fontSize: 15)),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => History(),));
                    },
                    child: Text("History", style: TextStyle(color: Colors.white,
                        fontSize: 15)),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 1.0, // Height of the divider line
                child: Stack(
                  children: [
                    Container(
                      color: Colors.grey,
                      width: double.infinity,
                      height: 2.0, // Height of the grey portion
                    ),
                    Container(
                      color: Colors.blue,
                      width: 87.0, // Width of the blue portion
                      height: 3.0, // Height of the blue portion
                    ),
                    Container(
                      color: Colors.grey,
                      width: 20,
                      height: 2.0, // Height of the grey portion
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 3),
                          Text("Murphy Dietrich", style:
                          TextStyle(color: Colors.white)),
                          SizedBox(width: 16),
                          Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.blueGrey.shade900,
                            ),
                            child: Center(child: Text("3 Items", style:
                            TextStyle(color: Colors.white),)),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.orange,
                            child: Container(
                              height: 7,
                              width: 7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("En-60 Shakti Tower, En Block", style:  TextStyle(color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          SizedBox(width: 18),
                          Text("20 Jul 2023, 03.49 PM", style:  TextStyle(color: Colors.grey,
                              fontSize: 11)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 35),
                  Column(
                    children: [

                      Stack(
                        alignment: Alignment.bottomCenter, // Align the text to the bottom of the stack
                        children: [
                          Container(
                            width: 95,
                            height: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/wtruck.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 18,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                "Pending",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),


                ],
              ),
              SizedBox(height: 1),
              Row(
                children: [
                  SizedBox(width: 17,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                            color: Colors.white,size: 20,),
                          SizedBox(width: 2),
                          Text("Hatta nagar Rd, Dakshin Sekhpur", style:
                          TextStyle(color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          SizedBox(width: 18),
                          Text("12th Jul,2023", style:  TextStyle(color: Colors.grey,
                              fontSize: 11)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [

                  Container(
                    height: 1, // Thickness of the divider
                    width: 360,
                    color: Colors.black45, // Color of the dots
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 85, // Number of dots
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
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
