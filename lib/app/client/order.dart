import 'package:client_app/app/client/history.dart';
import 'package:client_app/app/client/quotation.dart';
import 'package:flutter/material.dart';


import '../data/stringmanager.dart';
import 'client_offer.dart';
import 'message.dart';
import 'order_details.dart';
import 'order_details_1.dart';
import 'orderdetails_2.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 110,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(width: 50,),
                        IconButton( onPressed: () {
                          Navigator.pop(context);
                        }, icon: Icon(Icons.arrow_back_ios_new_outlined))
                      ],
                    ),
                    SizedBox(width: 140,),
                    Column(
                      children: [
                        Text("Order", style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(width: 125,),
                  ],
                ),
                Container (
                  width: 340.0,
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
                            child: Text(StringManager.seaVeText, style: TextStyle(color: Colors.white),),
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
      body:   SingleChildScrollView(
        child: Container(color: Colors.black,
          child: Column(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 340,
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClientOffer() ,));
                    },
                    child: Text(StringManager.offText, style: TextStyle(color: Colors.grey,
                        fontSize: 15),),
                  ),
                  SizedBox(width: 25),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Quotation() ,));
                    },
                    child: Text(StringManager.quotText, style: TextStyle(color: Colors.grey,
                        fontSize: 15)),
                  ),
                  SizedBox(width: 25),
                  Text(StringManager.orde, style: TextStyle(color: Colors.blue,
                      fontSize: 15)),
                  SizedBox(width: 30),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => History(),));
                    },
                    child: Text(StringManager.his, style: TextStyle(color: Colors.grey,
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
                      width: 295.0, // Width of the blue portion
                      height: 3.0, // Height of the blue portion
                    ),
                    Container(
                      color: Colors.grey,
                      width: 235,
                      height: 2.0, // Height of the grey portion
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container (
                width: 385.0,
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
                          child: Text(StringManager.sor, style: TextStyle(color: Colors.white),),
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
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigate to a new screen when the text is tapped.
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => OrderDetails(),
                                ),
                              );
                            },
                            child: Text(StringManager.mur, style:
                            TextStyle(color: Colors.white)),
                          ),
                          SizedBox(width: 105),
                        ],
                      ),
                      SizedBox(height: 6  ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 22),
                              Text(StringManager.ornoText,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                              SizedBox(width: 6),
                              Text(StringManager.orno,
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              SizedBox(width: 60),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          SizedBox(width: 20  ),
                          Column(
                            children: [
                              Container(
                                height:50,
                                width: 230 ,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width:12),
                                    Text("Partner : ", style: TextStyle(color: Colors.grey),),
                                    SizedBox(width:5),
                                    Container(
                                      height:30,
                                      width: 70 ,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.orangeAccent,
                                      ),
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => Message() ,));
                                          },
                                          child: Text(StringManager.mesText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width:8),
                                    Container(
                                        height:30,
                                        width: 60 ,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                            border: Border.all(
                                              color: Colors.orangeAccent,
                                              width: 1,
                                            )
                                        ),
                                        child: Center(
                                          child: Text(StringManager.callText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        )
                                    )
                                  ],
                                ),

                              ),
                              SizedBox(height: 10  ),
                              Container(
                                height:50,
                                width: 230 ,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width:12),
                                    Text(StringManager.ven, style: TextStyle(color: Colors.grey),),
                                    SizedBox(width:5),
                                    Container(
                                      height:30,
                                      width: 70 ,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.orangeAccent,
                                      ),
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => Message() ,));
                                          },
                                          child: Text(StringManager.mesText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width:8),
                                    Container(
                                        height:30,
                                        width: 60 ,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                            border: Border.all(
                                              color: Colors.orangeAccent,
                                              width: 1,
                                            )
                                        ),
                                        child: Center(
                                          child: Text(StringManager.callText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        )
                                    )
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 98,
                            height: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/ship.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7)
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                StringManager.pi,
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                  backgroundColor: Colors.blue, // Background color with opacity
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                height: 1, // Thickness of the divider
                width: 380,
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
              SizedBox(height: 15,),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {

                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => OrderDetails1(),
                                ),
                              );
                            },
                            child: Text(StringManager.mur, style:
                            TextStyle(color: Colors.white)),
                          ),
                          SizedBox(width: 105),
                        ],
                      ),
                      SizedBox(height: 6  ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 22),
                              Text(StringManager.ornoText,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                              SizedBox(width: 6),
                              Text(StringManager.orno,
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              SizedBox(width: 60),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          SizedBox(width: 20  ),
                          Column(
                            children: [
                              Container(
                                height:50,
                                width: 230 ,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width:12),
                                    Text("Partner : ", style: TextStyle(color: Colors.grey),),
                                    SizedBox(width:5),
                                    Container(
                                      height:30,
                                      width: 70 ,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.orangeAccent,
                                      ),
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Message() ,));
                                          },
                                          child: Text(StringManager.mesText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width:8),
                                    Container(
                                        height:30,
                                        width: 60 ,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                            border: Border.all(
                                              color: Colors.orangeAccent,
                                              width: 1,
                                            )
                                        ),
                                        child: Center(
                                          child: Text(StringManager.callText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        )
                                    )
                                  ],
                                ),

                              ),
                              SizedBox(height: 10  ),
                              Container(
                                height:50,
                                width: 230 ,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width:12),
                                    Text(StringManager.ven, style: TextStyle(color: Colors.grey),),
                                    SizedBox(width:5),
                                    Container(
                                      height:30,
                                      width: 70 ,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.orangeAccent,
                                      ),
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => Message() ,));
                                          },
                                          child: Text(StringManager.mesText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width:8),
                                    Container(
                                        height:30,
                                        width: 60 ,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                            border: Border.all(
                                              color: Colors.orangeAccent,
                                              width: 1,
                                            )
                                        ),
                                        child: Center(
                                          child: Text(StringManager.callText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        )
                                    )
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 11),
                  Column(
                    children: [
                      Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 88,
                            height: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/ship.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7)
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                StringManager.ou,
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                  backgroundColor: Colors.green.shade900, // Background color with opacity
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                height: 1, // Thickness of the divider
                width: 380,
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

              SizedBox(height: 15,),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          InkWell( onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => OrderDetails2(),
                              ),
                            );
                          },
                            child: InkWell( onTap: () {
                              // Navigate to a new screen when the text is tapped.
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => OrderDetails2(),
                                ),
                              );
                            },
                              child: Text(StringManager.mur, style:
                              TextStyle(color: Colors.white)),
                            ),
                          ),
                          SizedBox(width: 105),
                        ],
                      ),
                      SizedBox(height: 6  ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 22),
                              Text(StringManager.ornoText,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                              SizedBox(width: 6),
                              Text(StringManager.orno,
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              SizedBox(width: 60),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          SizedBox(width: 20  ),
                          Column(
                            children: [
                              Container(
                                height:50,
                                width: 230 ,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width:12),
                                    Text("Partner : ", style: TextStyle(color: Colors.grey),),
                                    SizedBox(width:5),
                                    Container(
                                      height:30,
                                      width: 70 ,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.orangeAccent,
                                      ),
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Message() ,));
                                          },
                                          child: Text(StringManager.mesText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width:8),
                                    Container(
                                        height:30,
                                        width: 60 ,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                            border: Border.all(
                                              color: Colors.orangeAccent,
                                              width: 1,
                                            )
                                        ),
                                        child: Center(
                                          child: Text(StringManager.callText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        )
                                    )
                                  ],
                                ),

                              ),
                              SizedBox(height: 10  ),
                              Container(
                                height:50,
                                width: 230 ,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width:12),
                                    Text(StringManager.ven, style: TextStyle(color: Colors.grey),),
                                    SizedBox(width:5),
                                    Container(
                                      height:30,
                                      width: 70 ,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.orangeAccent,
                                      ),
                                      child: Center(
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (context) => Message() ,));
                                          },
                                          child: Text(StringManager.mesText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width:8),
                                    Container(
                                        height:30,
                                        width: 60 ,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                            border: Border.all(
                                              color: Colors.orangeAccent,
                                              width: 1,
                                            )
                                        ),
                                        child: Center(
                                          child: Text(StringManager.callText, style: TextStyle(color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          ),
                                        )
                                    )
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 11),
                  Column(
                    children: [
                      Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 98,
                            height: 135,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/ship.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7)
                              ),
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Out for Delivery",
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                  backgroundColor: Colors.green.shade900, // Background color with opacity
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              Container(
                height: 1, // Thickness of the divider
                width: 380,
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
            ],
          ),
        ),
      ),
    );
  }
}