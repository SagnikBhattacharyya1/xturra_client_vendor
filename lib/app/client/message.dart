import 'package:flutter/material.dart';

import '../data/stringmanager.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 70,
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
                      SizedBox(width: 3,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(StringManager.mur, style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w600),),
                          SizedBox(height: 3,),
                          Text(StringManager.star, style: TextStyle(color: Colors.grey,
                              fontSize: 10),),
                        ],
                      ),
                      SizedBox(width: 40),
                      Column (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.white,
                                child: Container(
                                  height: 6,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              SizedBox(width: 25,)
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  border: Border.all(
                                      color: Colors.white,
                                      width: 2
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/wtruck.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),

                              ),
                              SizedBox(height: 15,)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 6,),
                ],
              )
          ),
        ),
        body: SingleChildScrollView(
          child: Container(color: Colors.black,
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 310,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text(StringManager.saf, style: TextStyle(color: Colors.white, fontSize: 13),),
                        Row(
                          children: [
                            SizedBox(width: 60),
                            Text(StringManager.com, style: TextStyle(color: Colors.white,
                                fontSize: 13)),
                            Text(StringManager.lea, style: TextStyle(color: Colors.green.shade700,fontWeight: FontWeight.w500))
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/images/wtruck.jpeg"), // Path to your image
                            ),
                            SizedBox(height: 80,)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 240,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(StringManager.lore, style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(StringManager.l2, style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(StringManager.l3, style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(StringManager.l4, style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 70,),
                    Column(
                      children: [
                        Container(
                          width: 240,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15)
                            ),
                            image: DecorationImage(
                              image: AssetImage("assets/images/ship.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 240,
                          height: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)
                            ),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.orangeAccent,
                                  ),
                                  SizedBox(width: 7,),
                                  Text(StringManager.fort, style:  TextStyle(color:
                                  Colors.orangeAccent),)
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Text(StringManager.ther, style:  TextStyle(color:
                                  Colors.white, fontSize: 11)),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text(StringManager.lo, style:  TextStyle(color:
                                  Colors.white,fontSize: 11)),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Container(
                                    width: 90,
                                    height: 28,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue,
                                    ),
                                    child: Center(
                                      child: Text(StringManager.cla, style:  TextStyle(color:
                                      Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                        ),
                        SizedBox(height: 15)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: 1, // Divider height
                      width: 135, // Divider width
                      color: Colors.grey, // Divider color
                    ),
                    SizedBox(width: 7),
                    Text(
                      StringManager.tod,
                      style: TextStyle(fontSize: 16,color: Colors.white,),
                    ),
                    SizedBox(width: 7,),
                    Container(
                      height: 1, // Divider height
                      width: 145, // Divider width
                      color: Colors.grey, // Divider color
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    SizedBox(width: 230,),
                    Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),

                        ),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Center(child: Text(StringManager.hel, style: TextStyle(color: Colors.white),)),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/boy.jpeg"), // Path to your image
                    ),
                    SizedBox(height: 80,),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/wtruck.jpeg"), // Path to your image
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 240,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(StringManager.what, style:  TextStyle(color: Colors.white),),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(StringManager.many, style:  TextStyle(color: Colors.white)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Text(StringManager.l, style:  TextStyle(color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 270,),
                    Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),

                        ),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(width: 5,),
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.white,
                          ),
                          SizedBox(width: 5,),
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.white,
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      width: 260,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 25,),
                          Text(StringManager.smsg, style: TextStyle(color: Colors.grey, fontSize: 15),),
                          SizedBox(width: 70,),
                          Icon(Icons.attachment,color: Colors.white),
                          SizedBox(width: 15,),
                          Icon(Icons.camera, color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.send, color: Colors.white,),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
    );
  }
}