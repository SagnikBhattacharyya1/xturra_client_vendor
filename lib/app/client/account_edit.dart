import 'package:flutter/material.dart';
import '../data/stringmanager.dart';

class AccountEdit extends StatefulWidget {
  const AccountEdit({super.key});

  @override
  State<AccountEdit> createState() => _AccountEditState();
}

class _AccountEditState extends State<AccountEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 150,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(width: 50,),
                        Icon(Icons.chevron_left, color:  Colors.orangeAccent,size: 30,)
                      ],
                    ),
                    SizedBox(width: 120,),
                    Column(
                      children: [
                        Text(StringManager.myac, style: TextStyle(color: Colors.white,fontSize: 18,
                            fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(width: 125,),
                  ],
                ),
                SizedBox(height: 15,),
                Center(
                  child: Container(
                    height:95,
                    width: 375 ,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 9,),
                            Row(
                              children: [
                                SizedBox(width: 12,),
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 2
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/boy.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),

                                ),
                                SizedBox(height: 10),
                                Column(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(width: 10),
                                            Text(StringManager.chge, style:  TextStyle(
                                                color: Colors.white, fontSize: 12),),
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Container(
                                              height:23,
                                              width: 95 ,
                                              decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.5),
                                                borderRadius: BorderRadius.circular(7),
                                              ),
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          SizedBox(width: 7),
                                                          Text(StringManager.img, style:  TextStyle(
                                                              color: Colors.white, fontSize: 12)),
                                                        ],
                                                      ),
                                                      SizedBox(width: 12,),
                                                      CircleAvatar(
                                                        radius: 7,
                                                        backgroundColor: Colors.blue,
                                                        child: Icon(Icons.close, size: 10, color:
                                                        Colors.white,),
                                                      ),
                                                    ],
                                                  )

                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 15),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 12,)
                          ],
                        ),
                        SizedBox(width: 108,),
                        Icon(Icons.add, color: Colors.white, size: 45,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            )
        ),
      ),
      body: Container(color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 1, // Divider height
                      width: 115, // Divider width
                      color: Colors.grey, // Divider color
                    ),
                    SizedBox(width: 15),
                    Text(
                      StringManager.perdet,
                      style: TextStyle(fontSize: 16,color: Colors.white,),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 1, // Divider height
                      width: 115, // Divider width
                      color: Colors.grey, // Divider color
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Text(StringManager.uplo, style:  TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w600),),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: 375, // Width of the container
              height: 140, // Height of the container
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1, // Border width
                ),
                borderRadius: BorderRadius.circular(10), // Border radius
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 180),
                      Icon(Icons.photo_album_outlined, color: Colors.white,
                        size: 30,)
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 80),
                      Text(StringManager.drag, style:  TextStyle(color: Colors.white,
                          fontWeight: FontWeight.w600)),
                      Text(StringManager.bro, style:  TextStyle(color: Colors.blue,
                          fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 100),
                      Text(StringManager.sup, style:  TextStyle(color: Colors.grey,
                          fontSize: 13))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 375, // Width of the container
              height: 40, // Height of the container
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1, // Border width
                ),
                borderRadius: BorderRadius.circular(10), // Border radius
              ),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Text(StringManager.ad, style:  TextStyle(color: Colors.white,
                  )),
                  SizedBox(width: 260,),
                  Icon(Icons.chevron_right, color: Colors.orange,)
                ],
              ),
            ),
            SizedBox(height: 100,),
            Container(
              width: 375, // Width of the container
              height: 40, // Height of the container
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),// Border width
              ),
              child: Center(child: Text(StringManager.up, style: TextStyle(
                  color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }
}
