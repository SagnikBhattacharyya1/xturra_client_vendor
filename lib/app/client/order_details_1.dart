import 'package:flutter/material.dart';


import '../data/stringmanager.dart';

class OrderDetails1 extends StatefulWidget {
  const OrderDetails1({super.key});

  @override
  State<OrderDetails1> createState() => _OrderDetails1State();
}

class _OrderDetails1State extends State<OrderDetails1> {
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
                        Text(StringManager.offText, style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(width: 125,),
                  ],
                ),
                Container (
                  width: 310.0,
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
              SizedBox(height: 10,),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 22),
                      Text(StringManager.orstat,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(width: 160),
                      Column(
                        children: [
                          Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                StringManager.penText,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 22),
                      Text(StringManager.ornoText,
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      Text(StringManager.orvalText,
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(width: 22,),
                  Column(
                    children: [
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            StringManager.viMaText,
                            style: TextStyle(
                              color: Colors.white, fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [
                      Container(
                        height: 25,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            StringManager.caqText,
                            style: TextStyle(
                              color: Colors.black, fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Container(
                        height: 25,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            StringManager.modText,
                            style: TextStyle(
                              color: Colors.white, fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 13),
              Row(
                children: [
                  SizedBox(width: 22),
                  Container(
                    height: 1, // Thickness of the divider
                    width: 320,
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
              SizedBox(height: 13),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 22),
                      Text(StringManager.ameText,
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                      SizedBox(width: 22),
                      Column(
                        children: [
                          Container(
                            height: 20,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                StringManager.on,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 22,),
                      Text(StringManager.corpText,
                        style: TextStyle(
                            color: Colors.grey,fontSize: 12
                        ),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 13),
              Container(
                height: 230,
                width: 310,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.2),

                ),
                child:  Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 12),
                        Text(StringManager.tab, style: TextStyle(
                            color: Colors.white),),
                        SizedBox(width: 230),
                        Row(
                          children: [
                            Icon(Icons.keyboard_arrow_down, color:  Colors.orange,
                                size: 15)
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(width: 10),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 12,),
                            Container(
                              width: 95,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      Text(StringManager.ht, style :
                                      TextStyle(color:  Colors.grey,fontSize: 11)),
                                      SizedBox(width: 10),
                                      Column(
                                        children: [
                                          SizedBox(height: 2),
                                          Icon(Icons.keyboard_arrow_up,
                                              color: Colors.orange, size: 13),
                                          Icon(Icons.keyboard_arrow_down,
                                              color: Colors.orange, size: 13)
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 95,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      Text(StringManager.ht , style :
                                      TextStyle(color:  Colors.grey,fontSize: 11)),
                                      SizedBox(width: 10),
                                      Column(
                                        children: [
                                          SizedBox(height: 2),
                                          Icon(Icons.keyboard_arrow_up,
                                              color: Colors.orange, size: 13),
                                          Icon(Icons.keyboard_arrow_down,
                                              color: Colors.orange, size: 13)
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(width: 5),
                            Container(
                              width: 95,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(width: 8),
                                      Text(StringManager.ht, style :
                                      TextStyle(color:  Colors.grey,fontSize: 11)),
                                      SizedBox(width: 10),
                                      Column(
                                        children: [
                                          SizedBox(height: 2),
                                          Icon(Icons.keyboard_arrow_up,
                                              color: Colors.orange, size: 13),
                                          Icon(Icons.keyboard_arrow_down,
                                              color: Colors.orange, size: 13)
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),

                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 310,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 13),
                                  Text(StringManager.weiText  , style :
                                  TextStyle(color:  Colors.grey,fontSize: 11),),
                                  SizedBox(width: 220),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(6.0),   // Adjust the radius as needed
                                        topRight: Radius.circular(6.0),  // Adjust the radius as needed
                                      ),
                                    ),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 4 ),
                                        Text(StringManager.kgText, style:  TextStyle(fontSize: 11, color: Colors.white  ),),
                                        Icon(Icons.keyboard_arrow_down,size: 15, color: Colors.orange,)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),

                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 355,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 13),
                                  Text(StringManager.quanText, style :
                                  TextStyle(color:  Colors.grey,fontSize: 11),),
                                ],
                              ),
                            ],
                          ),

                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 355,
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 13),
                                  Text(StringManager.condText, style :
                                  TextStyle(color:  Colors.grey,fontSize: 11),),
                                ],
                              ),
                            ],
                          ),

                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 22,),
                  Text(StringManager.addinfoText, style: TextStyle(color: Colors.white
                  ),),
                ],
              ),
              SizedBox(height:10),
              Column(
                children: [
                  Container(
                    width: 310,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Icon(Icons.speaker_notes, color:  Colors.white,),
                            SizedBox(width: 10,),
                            Text(StringManager.desText, style : TextStyle(color:  Colors.white),),
                            SizedBox(width: 150),
                            Icon(Icons.keyboard_arrow_right, color: Colors.orange,size: 15,)
                          ],
                        ),
                      ],
                    ),

                  ),
                  SizedBox(height: 7,),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 310,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Icon(Icons.chat_outlined, color:  Colors.white,),
                            SizedBox(width: 10,),
                            Text(StringManager.noteText, style : TextStyle(color:  Colors.white),),
                            SizedBox(width: 180),
                            Icon(Icons.keyboard_arrow_right, color: Colors.orange,size: 15)
                          ],
                        ),
                      ],
                    ),

                  ),
                  SizedBox(height: 7,),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 310,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Icon(Icons.create, color:  Colors.white,),
                            SizedBox(width: 10,),
                            Text(StringManager.instText, style : TextStyle(color:  Colors.white),),
                            SizedBox(width: 160),
                            Icon(Icons.keyboard_arrow_right, color: Colors.orange,size: 15)
                          ],
                        ),
                      ],
                    ),

                  ),
                  SizedBox(height: 7  ,),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 310,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Icon(Icons.photo, color:  Colors.white,),
                            SizedBox(width: 10,),
                            Text(StringManager.phoText, style : TextStyle(color:  Colors.white),),
                            SizedBox(width: 180),
                            Icon(Icons.keyboard_arrow_right, color: Colors.orange,size: 15)
                          ],
                        ),
                      ],
                    ),

                  ),
                  SizedBox(height: 7),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 310,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Icon(Icons.attach_file, color:  Colors.white,),
                            SizedBox(width: 10,),
                            Text(StringManager.attText, style : TextStyle(color:  Colors.white),),
                            SizedBox(width: 130 ),
                            Icon(Icons.keyboard_arrow_right, color: Colors.orange,size: 15)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 22,),
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
                      Text(StringManager.adValText, style:  TextStyle(color: Colors.white),),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 35),
                      Text(StringManager.jul20Text, style:  TextStyle(color: Colors.grey,
                          fontSize: 11)),
                    ],
                  ),
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
                              Text(StringManager.hattaText, style:
                              TextStyle(color: Colors.white),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              SizedBox(width: 18),
                              Text(StringManager.jul20Text, style:  TextStyle(color: Colors.grey,
                                  fontSize: 11)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 375,
                    height: 135,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 8),
                        Row(
                          children: [
                            SizedBox(width: 8),
                            Icon(Icons.fire_truck, color: Colors.grey,size: 15,),
                            SizedBox(width: 10),
                            Text(StringManager.del, style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 170,),
                            Text(StringManager.twenty, style: TextStyle(color: Colors.white))
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            SizedBox(width: 8),
                            Icon(Icons.handshake_outlined, color: Colors.grey,size: 15,),
                            SizedBox(width: 10),
                            Text(StringManager.serv, style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 170,),
                            Text(StringManager.thir, style: TextStyle(color: Colors.white))
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            SizedBox(width: 8),
                            Icon(Icons.event_note, color: Colors.grey,size: 15,),
                            SizedBox(width: 10),
                            Text(StringManager.tax, style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 240,),
                            Text(StringManager.thirty, style: TextStyle(color: Colors.white))
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            SizedBox(width: 7),
                            Container(
                              height: 1, // Thickness of the divider
                              width: 350,
                              color: Colors.black45, // Color of the dots
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 60, // Number of dots
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
                        SizedBox(height: 8),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Text(StringManager.totco, style: TextStyle(color: Colors.white),),
                            SizedBox(width: 235),
                            Text(StringManager.four, style: TextStyle(color: Colors.blue))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(width: 18),
                      Text(StringManager.packst, style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 19),
                              Text(StringManager.orcnf, style: TextStyle(color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 19),
                              Text(StringManager.jul28, style: TextStyle(color: Colors.white,fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 160,),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Container(
                          height: 12,
                          width: 12 ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 17),
                              Text(StringManager.ordpi, style: TextStyle(color: Colors.grey,fontSize: 12)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 9),
                              Text(StringManager.notpic, style: TextStyle(color: Colors.white,fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 210,),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Container(
                          height: 12,
                          width: 12 ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 18),
                              Text(StringManager.orway, style: TextStyle(color: Colors.grey,fontSize: 12)),
                            ],
                          ),
                          Row(
                            children: [
                              Text(StringManager.notpic, style: TextStyle(color: Colors.white,fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 200),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.2),
                            radius: 15,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 18),
                              Text(StringManager.ordel, style: TextStyle(color: Colors.grey,fontSize: 12)),
                            ],
                          ),
                          Row(
                            children: [
                              Text(StringManager.notpic, style: TextStyle(color: Colors.white,fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 200),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.2),
                            radius: 15,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 25),
                ],
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
