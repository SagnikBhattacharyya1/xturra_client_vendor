import 'package:client_app/app/client/check_out_page.dart';
import 'package:client_app/app/client/quotation.dart';
import 'package:flutter/material.dart';
import '../data/stringmanager.dart';
import 'client_offer.dart';
import 'order.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
                    SizedBox(width: 100,),
                    Column(
                      children: [
                        Text(StringManager.his, style: TextStyle(color: Colors.white,
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
      body:  Container(color: Colors.black,
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
                SizedBox(width: 40,),
                InkWell(
                  onTap: () {
                    // Navigate to a new screen when the text is tapped.
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ClientOffer(),
                      ),
                    );
                  },
                  child: Text(StringManager.offText, style: TextStyle(color: Colors.grey,
                      fontSize: 15),),
                ),
                SizedBox(width: 25),
                InkWell(
                  onTap: () {
                    // Navigate to a new screen when the text is tapped.
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Quotation(),
                      ),
                    );
                  },
                  child: Text(StringManager.quotText, style: TextStyle(color: Colors.grey,
                      fontSize: 15)),
                ),
                SizedBox(width: 25),
                InkWell(
                  onTap: () {
                    // Navigate to a new screen when the text is tapped.
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Order(),
                      ),
                    );
                  },
                  child: Text(StringManager.orde, style: TextStyle(color: Colors.grey,
                      fontSize: 15)),
                ),
                SizedBox(width: 45),
                Text(StringManager.his, style: TextStyle(color: Colors.blue,
                    fontSize: 15))
              ],
            ),
            SizedBox(height: 10,),
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
                    width: 495.0, // Width of the blue portion
                    height: 3.0, // Height of the blue portion
                  ),
                  Container(
                    color: Colors.grey,
                    width: 325,
                    height: 2.0, // Height of the grey portion
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 22,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => CheckOutPage()));
                  },
                  child: Container(
                    height:35,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(child: Text(StringManager.onGText)),
                  ),
                ),
                SizedBox(width: 10,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => CheckOutPage()));
                  },
                  child: Container(
                    height:35,
                    width: 140 ,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 1
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text(StringManager.pas, style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: 22,),
                    Row(
                      children: [
                        Text(StringManager.ameText, style: TextStyle(
                            color: Colors.white)),
                      ],
                    ),
                    SizedBox(width: 22,),
                    Container(
                      height:25,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: Center(
                        child: Text(StringManager.on, style: TextStyle(
                            color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 80,),
                Container(
                  height:35,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orangeAccent,
                  ),
                  child: Center(child: Text(StringManager.chat, style:  TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 10,),
                Container(
                  height:35,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color:  Colors.orangeAccent
                    ),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(child: Text(StringManager.reqI,
                    style:  TextStyle(color: Colors.white),)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 1, // Thickness of the divider
              width:375,
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

    );
  }
}
