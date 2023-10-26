import 'package:client_app/app/client/registration.dart';
import 'package:client_app/app/client/signup_page_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/stringmanager.dart';
import '../widgets/buttons.dart';
import '../widgets/code_text_2.dart';
import '../widgets/db_field.dart';
import '../widgets/emfield_text.dart';
import '../widgets/terms_text.dart';
import '../widgets/text_field.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,

      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Container(
            margin: EdgeInsets.only(left: 65),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    StringManager.createText,
                    style: GoogleFonts.ibmPlexSans(color:Colors.white,fontWeight: FontWeight.w500,fontSize: 26)
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    StringManager.createMessText,
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
          margin: EdgeInsets.only(top:18,right: 30,left: 30),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing:10.0,
            children: [
              FieldText(StringManager.firstNameText),
              FieldText(StringManager.lastNameText),
              DbFieldText(StringManager.dobText),
              CodeText(),
              FieldText(StringManager.telephoneText),
              FieldText(StringManager.addressText),
              EmFieldText(StringManager.emailDemoText),
              Container(margin:EdgeInsets.only(top: 25),child: TermsText()),
              Container(margin:EdgeInsets.only(top:10,bottom: 100),child: Buttons(StringManager.aggText,SignUpPageTwo())),
            ],
          ),
        ),
      ),
    );
  }
}


