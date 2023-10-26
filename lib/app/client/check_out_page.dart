import 'package:client_app/app/client/notifications_page.dart';
import 'package:client_app/app/client/wallet.dart';
import 'package:client_app/app/widgets/dotted_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  int selectedRadio = 0;

  setSelectedRadio(int value) {
    setState(() {
      selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text("Check Out",style: GoogleFonts.ibmPlexSans(fontSize: 18,color: Colors.white),),
        leading: IconButton( onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
          centerTitle: true,
      ),
      body: ListView(

        children: [
         Container(
           margin: EdgeInsets.only(left: 10),
             child: Text("Order Summary",
               style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),)),
          Container(
            margin: EdgeInsets.only(top:10,left: 10),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    image: DecorationImage(image: AssetImage("assets/images/truck_1.jpg"),fit: BoxFit.cover)
                    )
                  ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      children: [
                        SizedBox(width: 5,),
                        Text("Lorem Ipsum",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15),),
                        SizedBox(width: 5,),
                        Stack(
                          children:[
                            Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                          ),
                            Positioned(
                              top: 1,
                          left: 1,
                                child:  Icon(Icons.check,color: Colors.white,size: 16,))
                        ]),

                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                        child: Text("House Shifting",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 12),)),
                  ],),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:15,left: 10,right: 8),
            child: Stack(
              children:[
                Container(
                height: 110,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.white,width: 0.5)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),

                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("No",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("01",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 10,),


                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Item",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("King Size Bed",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("Total",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 10,),



                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Weight",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("1 KG",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("-",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                        SizedBox(height: 10,),
                      ],
                    ),
                    SizedBox(width: 10,),



                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Dimension",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("-",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("-",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 10,),


                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Quantity",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("1",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("1",style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 10,),



                  ],
                ),
              ),
                Positioned(
                  left: 35,
                    child: Container(height: 110,width: 0.5,color: Colors.white,)),
                Positioned(
                    left: 133,
                    child: Container(height: 110,width: 0.5,color: Colors.white,)),
                Positioned(
                    left: 189,
                    child: Container(height: 110,width: 0.5,color: Colors.white,)),
                Positioned(
                    left: 270,
                    child: Container(height: 110,width: 0.5,color: Colors.white,)),
                Positioned(
                  top: 35,
                    child: Container(width:350,color: Colors.white,height: 0.5,)),
                Positioned(
                    top: 66,
                    child: Container(width:350,color: Colors.white,height: 0.5,)),
            ]),
          ),

          Container(
              margin: EdgeInsets.only(top:15,left: 10),
              child: Text("Promotions",
                style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),)),
          Container(
            margin: EdgeInsets.only(top:15,left: 10,right: 10),
            height: 60,width: 340,
          decoration: BoxDecoration(
            color: Colors.white10,
            borderRadius: BorderRadius.circular(8.0)
          ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text("+ Add Promo Code",
                    style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize:16,fontWeight: FontWeight.w400 ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 110),
                  child: InkWell(
                    child:Container(
                      height: 20,width: 65,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Apply",style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w500),),
                          Container(
                            margin: EdgeInsets.only(top: 2),
                              child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 8,))
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),



          Stack(
            children: [
              Container(
              height: 245,
              width: 340,
              margin: EdgeInsets.only(top:15,left: 10,right: 10),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Wrap(
                  spacing: 10.0,
                  direction: Axis.vertical,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text("Delivery Charges",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 15),)),
                        Container(
                          margin: EdgeInsets.only(left: 120),
                            child: Text("\$ 50.00",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text("Offer Apply",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 15),)),
                        Container(
                            margin: EdgeInsets.only(left: 160),
                            child: Text("\$ 50.00",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text("Services Charges",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 15),)),
                        Container(
                            margin: EdgeInsets.only(left: 120),
                            child: Text("\$ 50.00",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text("Currency Conversion Fee",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 15),)),
                        Container(
                            margin: EdgeInsets.only(left: 67),
                            child: Text("\$ 50.00",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text("Transaction Fee",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 15),)),
                        Container(
                            margin: EdgeInsets.only(left: 130),
                            child: Text("\$ 50.00",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Text("Taxes",style: GoogleFonts.ibmPlexSans(color: Colors.white60,fontSize: 15),)),
                        Container(
                            margin: EdgeInsets.only(left: 200),
                            child: Text("\$ 50.00",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15)))
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 12),
                              child: Text(" Total Cost",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 15),)),
                          Container(
                              margin: EdgeInsets.only(left: 163),
                              child: Text("\$ 200.00",style: GoogleFonts.ibmPlexSans(color: Colors.blue,fontSize: 15)))
                        ],
                      ),
                    ),

                  ],
                ),
              ),

            ),
              Positioned(
                top: 210,
                left: 25,
                child: Container(
                  height: 0.5,
                  width: 295,
                  color: Colors.white,
                ),)
          ]),

          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 15),
            height: 140,
            width: 340,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Container(
              margin: EdgeInsets.only(left:5),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Text("Gratuity",style: GoogleFonts.ibmPlexSans(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
                        Container(
                          margin: EdgeInsets.only(left: 240),
                          child: Stack(children:[
                            Container(height: 14,width: 14,color: Colors.green,),
                            Positioned(
                              top: 1,
                                left: 0.5,
                                child: Icon(Icons.check,color: Colors.white,size: 12,))

                          ]),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("It is an established fact that a reader will be distracted by the readable",
                      style: GoogleFonts.ibmPlexSans(
                        color: Colors.white60,
                        fontSize: 12,
                      ),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        InkWell(
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Colors.white10,width: 1.5),
                            ),
                            child: Center(child: Text("\$ 10.00",
                              style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white60),)),
                          ),
                        ),
                        SizedBox(width: 6.0,),
                        InkWell(
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Colors.white10,width: 1.5),
                            ),
                            child: Center(child: Text("\$ 10.00",
                              style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white60),)),
                          ),
                        ),
                        SizedBox(width: 6.0,),
                        InkWell(
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Colors.white10,width: 1.5),
                            ),
                            child: Center(child: Text("\$ 10.00",
                              style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white60),)),
                          ),
                        ),
                        SizedBox(width: 6.0,),
                        InkWell(
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Colors.white10,width: 1.5),
                            ),
                            child: Center(child: Text("\$ 10.00",
                              style: GoogleFonts.ibmPlexSans(fontSize: 12,color: Colors.white60),)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          width: 24.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                             shape: BoxShape.circle,
                        ),
                        child: Center(
                        child:

                        Radio(
                          value: 0,
                          groupValue: selectedRadio,
                          onChanged: (value) {
                            setSelectedRadio(value!);
                          },
                          activeColor: Colors.orange, // Set the color to orange
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Remove extra padding
                          visualDensity: VisualDensity.standard, // Adjust the padding
                        ),
                    ),
               ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text("Pay by Wallet ",
                            style: GoogleFonts.ibmPlexSans(
                            fontSize: 12,color: Colors.white60
                          ),),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text("Insufficient Balance",style: GoogleFonts.ibmPlexSans(
                              fontSize: 12,color: Colors.red),),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      child: Text("\$ 0.00",style: GoogleFonts.ibmPlexSans(
                          fontSize: 12,color: Colors.white),),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7),
                          width: 18.0,
                          height: 18.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black45,
                            border: Border.all(color: Colors.white,width: 0.5)
                          ),
                          ),
                        Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text("Pay by Card ",
                            style: GoogleFonts.ibmPlexSans(
                                fontSize: 12,color: Colors.white60
                            ),),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Wallet()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top:15,left: 10,right: 10),
              child: InkWell(
                child: Container(
                  height: 50,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Center(child: Text("Pay \$ 200.00",
                    style: GoogleFonts.ibmPlexSans(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w500),)),
                ),
              ),
            ),
          ),
          SizedBox(height: 25,)








        ],
      ),
    );
  }
}
