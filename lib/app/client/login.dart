import 'package:client_app/app/client/sign_up_page.dart';
import 'package:client_app/app/widgets/b_navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black87,
          title: Column(
            children: [
              Text("Ready to Login", style: GoogleFonts.ibmPlexSans(color: Colors.white,
                  fontWeight: FontWeight.w500, fontSize: 22),),
              SizedBox(height: 5,),
              Text("Please signin to your account", style:GoogleFonts.ibmPlexSans(color: Colors.white, fontSize: 18),)
            ],
          ),
        ),
      ),
      body: Container(color: Colors.black,
        child: Column(

          children: [
            SizedBox(height: 40),
            Center(
              child: Container(
                width: 310,
                child: Column(
                  children: [
                    Container(color: Colors.blueGrey.shade900,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2
                                )
                            ),
                            hintText: "Email Address" ,
                            hintStyle: GoogleFonts.ibmPlexSans(color: Colors.white),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("By clicking Agree & Join, you agree to Xturra's", style:  GoogleFonts.ibmPlexSans(color: Colors.grey,
                              fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Terms and Conditions", style:  GoogleFonts.ibmPlexSans(color: Colors.white, fontSize: 16)),
                              Text(" and ", style:  GoogleFonts.ibmPlexSans(color: Colors.grey, fontSize: 16)),
                              Text("Privacy Policy", style:  GoogleFonts.ibmPlexSans(color: Colors.white, fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50,),
                    Container(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => BNavBar()));

                      },style: ElevatedButton.styleFrom(

                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          )
                      ),
                          child: Center(
                            child: Text("Login",
                              style: TextStyle(
                                  fontSize: 20,fontWeight: FontWeight.w600
                              ),),
                          )),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100, // Adjust the width as needed
                          height:   1, // Adjust the height as needed
                          color: Colors.grey, // Set the color you want
                        ),
                        SizedBox(width: 30),
                        Text("Or", style: TextStyle(color: Colors.white)),
                        SizedBox(width: 30),// Add some spacing between the dividers
                        Container(
                          width: 100, // Adjust the width as needed
                          height: 1, // Adjust the height as needed
                          color: Colors.grey, // Set the color you want
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 2.0
                                )
                            ),
                            child: ClipOval(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset('assets/images/app.png',
                                    fit: BoxFit.cover,),
                                ))),
                        SizedBox(width: 20),
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.grey,
                                  width: 2.0
                              )
                          ),
                          child: ClipOval(
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Image.asset('assets/images/goo.png',
                                  fit: BoxFit.cover,),
                              )),
                        ),
                        SizedBox(width: 20),
                        Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.grey,
                                    width: 2.0
                                )
                            ),
                            child: ClipOval(
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.asset('assets/images/wind.png',
                                    fit: BoxFit.cover,),
                                ))),
                      ],
                    ),
                    SizedBox(height: 40),
                    RichText(
                        text: TextSpan(
                            text: "Dont have an account ? ",
                            style: GoogleFonts.ibmPlexSans(
                                color: Colors.grey,
                                fontSize: 18
                            ),

                            children: <TextSpan>[
                              TextSpan(
                                  text: "Signup",
                                  style: GoogleFonts.ibmPlexSans(
                                      color: Colors.orange,
                                      fontSize: 18
                                  )
                              )
                            ]
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
