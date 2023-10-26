import 'package:client_app/app/client/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/buttons.dart';
import '../Widgets/terms_text.dart';
import '../Widgets/text_field.dart';
import '../data/stringmanager.dart';
import '../widgets/code_text_2.dart';
import '../widgets/db_field.dart';
import '../widgets/emfield_text.dart';

class CreatePageTwo extends StatefulWidget {
  const CreatePageTwo({super.key});

  @override
  State<CreatePageTwo> createState() => _CreatePageTwoState();
}

class _CreatePageTwoState extends State<CreatePageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: Container(
            margin: EdgeInsets.only(left:70),
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
          margin: EdgeInsets.only(top:14,right: 30,left: 30),
          child: Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 10.0,
            children: [
              FieldText(StringManager.firstNameText),
              FieldText(StringManager.lastNameText),
              CodeText(),
              FieldText(StringManager.telephoneText),
              FieldText(StringManager.addressText),
              EmFieldText(StringManager.emailDemoText),
              DbFieldText(StringManager.dobText),
              FieldText(StringManager.jobtitleText),
              FieldText(StringManager.prevCompText),
              FieldText(StringManager.compSecText),
              FieldText(StringManager.industryText),
              FieldText(StringManager.noOfEmpText),
              FieldText(StringManager.websiteText),
              FieldText(StringManager.langText),
              Container(margin:EdgeInsets.only(top: 20,bottom: 25),child: TermsText()),
              Container(margin:EdgeInsets.only(bottom: 60),child: Buttons(StringManager.aggText,HomePage())),

            ],
          ),
        ),
      ),
    );
  }
}
