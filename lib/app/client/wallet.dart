import 'package:flutter/material.dart';
import '../data/stringmanager.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 40,
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
                        Text(StringManager.wal, style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w500, fontSize: 18),)
                      ],
                    ),
                    SizedBox(width: 125,),
                  ],
                ),
                SizedBox(height: 10,)
              ],
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Container(color: Colors.black,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 375, // Width of the container
                  height: 55, // Height of the container
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10), // Border radius
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Icon(Icons.wallet_outlined, color: Colors.white,),
                      SizedBox(width: 15,),
                      Text(StringManager.wabal, style:  TextStyle(color: Colors.white,
                      )),
                      SizedBox(width: 150,),
                      Text(StringManager.fo, style:  TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w600
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 375, // Width of the container
                height: 375, // Height of the container
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10), // Border radius
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(StringManager.add, style:  TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w600
                        )),
                        SizedBox(width: 45,),
                        Container(
                          width: 175, // Width of the container
                          height: 35, // Height of the container
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(7), // Border radius
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Text("\$", style:  TextStyle(color: Colors.grey,
                              )),
                              SizedBox(width: 90,),
                              Text(StringManager.tho, style:  TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ))
                            ],

                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 18,),
                        Container(
                          height: 1, // Thickness of the divider
                          width: 350,
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
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 18),
                        Icon(Icons.credit_card, color: Colors.white),
                        SizedBox(width: 10,),
                        Text(StringManager.adcar, style:  TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w500
                        ))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Container(
                          width: 350, // Width of the container
                          height: 45, // Height of the container
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(7), // Border radius
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              Text(StringManager.cno, style:  TextStyle(color: Colors.grey,
                                  fontWeight: FontWeight.w500
                              )),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Column(
                          children: [
                            Container(
                              width: 170, // Width of the container
                              height: 45, // Height of the container
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(7), // Border radius
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text(StringManager.expi, style:  TextStyle(color: Colors.grey,
                                      fontWeight: FontWeight.w500
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8,),
                        Column(
                          children: [
                            Container(
                              width: 170, // Width of the container
                              height: 45, // Height of the container
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(7), // Border radius
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text(StringManager.c, style:  TextStyle(color: Colors.grey,
                                      fontWeight: FontWeight.w500
                                  )),
                                  SizedBox(width: 95,),
                                  Icon(Icons.info_outline_rounded, color: Colors.grey,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 15,),
                        Column(
                          children: [
                            Container(
                              width: 350, // Width of the container
                              height: 45, // Height of the container
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(7), // Border radius
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text(StringManager.nam, style:  TextStyle(color: Colors.grey,
                                      fontWeight: FontWeight.w500
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 18,),
                    Container(
                        width: 350, // Width of the container
                        height: 45, // Height of the container
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10), // Border radius
                        ),
                        child: Center(child: Text(StringManager.top, style:  TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w700, fontSize: 16
                        )))
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 1, // Divider height
                    width: 145, // Divider width
                    color: Colors.grey, // Divider color
                  ),
                  SizedBox(width: 26),
                  Text(
                    StringManager.Hi,
                    style: TextStyle(fontSize: 16,color: Colors.white,),
                  ),
                  SizedBox(width: 27,),
                  Container(
                    height: 1, // Divider height
                    width: 145, // Divider width
                    color: Colors.grey, // Divider color
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 18,),
                      Container(
                        width: 90,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/wtruck.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),

                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Text(StringManager.mur, style:  TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w500
                          )),
                          Row(
                            children: [
                              Text(StringManager.jul10text, style:  TextStyle(color: Colors.grey,
                                  fontWeight: FontWeight.w400
                              )),
                              SizedBox(width: 12,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 85,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(StringManager.pa, style:  TextStyle(color: Colors.grey,
                                  fontWeight: FontWeight.w400
                              )),
                              SizedBox(width: 32,),
                            ],
                          ),
                          Row(
                            children: [
                              Text(StringManager.fo, style:  TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w500
                              )),
                              SizedBox(width: 10,),

                            ],
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
                width: 378,
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
                  Row(
                    children: [
                      SizedBox(width: 18,),
                      Container(
                        width: 90,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/tr.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),

                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Text(StringManager.mur, style:  TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w500
                          )),
                          Row(
                            children: [
                              Text(StringManager.jul10text, style:  TextStyle(color: Colors.grey,
                                  fontWeight: FontWeight.w400
                              )),
                              SizedBox(width: 12,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 85,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(StringManager.pa, style:  TextStyle(color: Colors.grey,
                                  fontWeight: FontWeight.w400
                              )),
                              SizedBox(width: 32,),
                            ],
                          ),
                          Row(
                            children: [
                              Text(StringManager.fo, style:  TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w500
                              )),
                              SizedBox(width: 10,),

                            ],
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
                width: 378,
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
                  Row(
                    children: [
                      SizedBox(width: 18,),
                      Container(
                        width: 90,
                        height: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/ship.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),

                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Text(StringManager.mur, style:  TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w500
                          )),
                          Row(
                            children: [
                              Text(StringManager.jul10text, style:  TextStyle(color: Colors.grey,
                                  fontWeight: FontWeight.w400
                              )),
                              SizedBox(width: 12,),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 85,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(StringManager.pa, style:  TextStyle(color: Colors.grey,
                                  fontWeight: FontWeight.w400
                              )),
                              SizedBox(width: 32,),
                            ],
                          ),
                          Row(
                            children: [
                              Text(StringManager.fo, style:  TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w500
                              )),
                              SizedBox(width: 10,),

                            ],
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
                width: 378,
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
              SizedBox(height: 30,),

            ],
          ),
        ),
      ),

    );
  }
}
