import 'package:client_app/app/client/login.dart';
import 'package:client_app/app/client/wallet.dart';
import 'package:flutter/material.dart';

import '../data/stringmanager.dart';
import 'account_edit.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                        }, icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.orangeAccent,))
                      ],
                    ),
                    SizedBox(width: 80,),
                    Column(
                      children: [
                        Text(StringManager.myac, style: TextStyle(color: Colors.white,fontSize: 18,
                            fontWeight: FontWeight.w600),)
                      ],
                    ),
                    SizedBox(width: 50,),
                  ],
                ),
                SizedBox(height: 15,),
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
                  height:95,
                  width: 310 ,
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
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SizedBox(width: 8,),
                              Text(StringManager.johw, style:  TextStyle(color: Colors.white, fontSize: 18,
                                  fontWeight: FontWeight.w600),),
                              SizedBox(width: 7),
                              Icon(Icons.edit_outlined,color: Colors.white),
                            ],
                          ),
                          SizedBox(height: 1),
                          Row(
                            children: [
                              Text(StringManager.bus, style:  TextStyle(color: Colors.white,fontSize: 17,)),
                              SizedBox(width: 9,),
                              CircleAvatar(
                                radius: 11,
                                backgroundColor: Colors.green,
                                child: Icon(Icons.check, color: Colors.white, size: 18,),
                              ),
                              SizedBox(width: 29,),
                            ],
                          ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              SizedBox(width: 20),
                              Icon(Icons.location_on_outlined, color: Colors.white),
                              SizedBox(height: 2),
                              Text(StringManager.jak, style:  TextStyle(color: Colors.white, fontSize: 16,)),

                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 40,),
                      Column(
                        children: [
                          SizedBox(height: 9,),
                          Container(
                            width: 60,
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
                          SizedBox(height: 12,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 13,),
              Row(
                children: [
                  SizedBox(width: 18,),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigate to a new screen when the text is tapped.
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AccountEdit(),
                            ),
                          );
                        },
                        child: Container(
                          height:95,
                          width: 110 ,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  SizedBox(width: 22,),
                                  Icon(Icons.person_outline_rounded,color: Colors.white, size: 35,),
                                ],
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  SizedBox(width: 15,),
                                  Text(StringManager.myAc, style:  TextStyle(color: Colors.white, fontSize: 16,))],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigate to a new screen when the text is tapped.
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Wallet(),
                            ),
                          );
                        },
                        child: Container(
                          height:95,
                          width: 100 ,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  SizedBox(width: 22,),
                                  Icon(Icons.wallet_outlined,color: Colors.white, size: 35,),
                                ],
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Text(StringManager.mywa, style:  TextStyle(color: Colors.white, fontSize: 16,))],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 7,),
                  Column(
                    children: [
                      Container(
                        height:95,
                        width: 100 ,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              width: 2
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                SizedBox(width: 40,),
                                Icon(Icons.wallet,color: Colors.white, size: 35,),
                              ],
                            ),
                            SizedBox(height: 3),
                            Row(
                              children: [
                                SizedBox(width: 32,),
                                Text(StringManager.orde, style:  TextStyle(color: Colors.white, fontSize: 16,))],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 13,),
              Container(
                height:270,
                width: 375 ,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey,
                      width: 2
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.shopping_cart_outlined, color: Colors.white),
                        SizedBox(width: 10,),
                        Text(StringManager.nven, style:  TextStyle(color: Colors.white, fontSize: 18,
                        )),
                        SizedBox(width: 170,),
                        Icon(Icons.chevron_right, color: Colors.orangeAccent, size: 20)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [SizedBox(width: 15,),
                        Container(
                          height: 1,
                          width: 340,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.info_outline ,color: Colors.white),
                        SizedBox(width: 10,),
                        Text(StringManager.he, style:  TextStyle(color: Colors.white, fontSize: 18,
                        )),
                        SizedBox(width: 240,),
                        Icon(Icons.chevron_right, color: Colors.orangeAccent, size: 20)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [SizedBox(width: 15,),
                        Container(
                          height: 1,
                          width: 340,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.headset_mic ,color: Colors.white),
                        SizedBox(width: 10,),
                        Text(StringManager.con, style:  TextStyle(color: Colors.white, fontSize: 18,
                        )),
                        SizedBox(width: 190,),
                        Icon(Icons.chevron_right, color: Colors.orangeAccent, size: 20)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [SizedBox(width: 15,),
                        Container(
                          height: 1,
                          width: 310,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text('∞', style:  TextStyle(color: Colors.white, fontSize: 20),),
                        SizedBox(width: 10,),
                        Text(StringManager.abt, style:  TextStyle(color: Colors.white, fontSize: 18,
                        )),
                        SizedBox(width: 208,),
                        Icon(Icons.chevron_right, color: Colors.orangeAccent, size: 20)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [SizedBox(width: 15,),
                        Container(
                          height: 1,
                          width: 340,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.event_note ,color: Colors.white),
                        SizedBox(width: 10,),
                        Text(StringManager.leg, style:  TextStyle(color: Colors.white, fontSize: 18,
                        )),
                        SizedBox(width: 235,),
                        Icon(Icons.chevron_right, color: Colors.orangeAccent, size: 20)
                      ],
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );

                },
                child: Container(
                  height:40,
                  width: 310   ,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                  ),
                  child: Center(child: Text(StringManager.logo, style:  TextStyle(color: Colors.white))),

                ),
              ),
              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );

                },
                child: Container(
                  height:40,
                  width: 310 ,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Colors.grey
                    ),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(child: Text(StringManager.delac, style:  TextStyle(color: Colors.white))),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}