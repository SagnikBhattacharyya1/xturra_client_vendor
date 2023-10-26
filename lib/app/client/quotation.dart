import 'package:flutter/material.dart';


import '../data/stringmanager.dart';

class Quotation extends StatefulWidget {
  const Quotation({super.key});

  @override
  State<Quotation> createState() => _QuotationState();
}

class _QuotationState extends State<Quotation> {
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
                    SizedBox(width: 120,),
                    Column(
                      children: [
                        Text("Quotation", style: TextStyle(color: Colors.white,
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
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 2,),
                          Text("Murphy Dietrich", style: TextStyle(color: Colors.white),),
                          SizedBox(width:33),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text("Receive Date", style: TextStyle(color:
                          Colors.grey,fontSize: 11 )),
                          SizedBox(width: 6),
                          Text("25/05/23", style: TextStyle(color: Colors.white,
                              fontSize: 13)),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width: 13,),
                          Text("Receive Date", style: TextStyle(color: Colors.grey,
                              fontSize: 11)),
                          SizedBox(width: 10),
                          Text("25/05/23", style: TextStyle(color: Colors.white,
                              fontSize: 13)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 125,),
                  Column(
                    children: [
                      Container(
                        width: 80,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/wtruck.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
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
                      width: 205.0, // Width of the blue portion
                      height: 3.0, // Height of the blue portion
                    ),
                    Container(
                      color: Colors.grey,
                      width: 120,
                      height: 2.0, // Height of the grey portion
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 2,),
                          Text("Murphy Dietrich", style: TextStyle(color: Colors.white),),
                          SizedBox(width:33),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text("Receive Date", style: TextStyle(color:
                          Colors.grey,fontSize: 11 )),
                          SizedBox(width: 6),
                          Text("25/05/23", style: TextStyle(color: Colors.white,
                              fontSize: 13)),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width: 13,),
                          Text("Receive Date", style: TextStyle(color: Colors.grey,
                              fontSize: 11)),
                          SizedBox(width: 10),
                          Text("25/05/23", style: TextStyle(color: Colors.white,
                              fontSize: 13)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 125,),
                  Column(
                    children: [
                      Container(
                        width: 80,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/wtruck.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
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
                          SizedBox(width: 2,),
                          Text("Murphy Dietrich", style: TextStyle(color: Colors.white),),
                          SizedBox(width:33),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text("Receive Date", style: TextStyle(color:
                          Colors.grey,fontSize: 11 )),
                          SizedBox(width: 6),
                          Text("25/05/23", style: TextStyle(color: Colors.white,
                              fontSize: 13)),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width: 13,),
                          Text("Receive Date", style: TextStyle(color: Colors.grey,
                              fontSize: 11)),
                          SizedBox(width: 10),
                          Text("25/05/23", style: TextStyle(color: Colors.white,
                              fontSize: 13)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 125,),
                  Column(
                    children: [
                      Container(
                        width: 80,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/wtruck.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
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
                          SizedBox(width: 2,),
                          Text("Murphy Dietrich", style: TextStyle(color: Colors.white),),
                          SizedBox(width:33),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text("Receive Date", style: TextStyle(color:
                          Colors.grey,fontSize: 11 )),
                          SizedBox(width: 6),
                          Text("25/05/23", style: TextStyle(color: Colors.white,
                              fontSize: 13)),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width: 13,),
                          Text("Receive Date", style: TextStyle(color: Colors.grey,
                              fontSize: 11)),
                          SizedBox(width: 10),
                          Text("25/05/23", style: TextStyle(color: Colors.white,
                              fontSize: 13)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 125,),
                  Column(
                    children: [
                      Container(
                        width: 80,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/wtruck.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
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
                          SizedBox(width: 2,),
                          Text("Murphy Dietrich", style: TextStyle(color: Colors.white),),
                          SizedBox(width:33),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width: 15),
                          Text("Receive Date", style: TextStyle(color:
                          Colors.grey,fontSize: 11 )),
                          SizedBox(width: 6),
                          Text("25/05/23", style: TextStyle(color: Colors.white,
                              fontSize: 13)),
                        ],
                      ),
                      SizedBox(height:5),
                      Row(
                        children: [
                          SizedBox(width: 13,),
                          Text("Receive Date", style: TextStyle(color: Colors.grey,
                              fontSize: 11)),
                          SizedBox(width: 10),
                          Text("25/05/23", style: TextStyle(color: Colors.white,
                              fontSize: 13)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 120,),
                  Column(
                    children: [
                      Container(
                        width: 80,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/wtruck.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
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
              SizedBox(height: 45,),

            ],
          ),
        ),
      ),
    );
  }
}
