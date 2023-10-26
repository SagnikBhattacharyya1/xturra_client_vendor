import 'package:client_app/app/client/create_page.dart';
import 'package:client_app/app/client/registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/stringmanager.dart';
import '../widgets/already_text.dart';
import '../widgets/buttons.dart';
import '../widgets/code_text_2.dart';
import '../widgets/emfield_text.dart';
import '../widgets/footer_text.dart';
import '../widgets/terms_text.dart';
import '../widgets/text_field.dart';
import '../widgets/upper_row.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            title: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      StringManager.signupText,
                      style: GoogleFonts.ibmPlexSans(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 26)
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      StringManager.signUpMessText,
                      style: GoogleFonts.ibmPlexSans(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top:15,right: 30,left: 30),
            child: Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 10.0,
                children: [
                  UpperRow(Colors.blue, Colors.white),
                  FieldText(StringManager.firstNameText),
                  FieldText(StringManager.lastNameText),
                  CodeText(),
                  FieldText(StringManager.telephoneText),
                  EmFieldText(StringManager.emailText),
                  Container(margin:EdgeInsets.only(top:10,bottom: 20),child: TermsText()),
                  Container(margin:EdgeInsets.only(bottom: 10),child: Buttons(StringManager.nextText,CreatePage())),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(width:100,child: Divider(color: Colors.white,)),
                      Text(StringManager.orText,style: GoogleFonts.ibmPlexSans(color: Colors.white),),
                      Container(width:100,child: Divider(color:Colors.white,))
                    ],),
                  FooterText(),
                  Container(margin:EdgeInsets.only(top:10,bottom: 60),child: AlreadyText()),
                ]
            ),
          ),
        ));
  }
}
