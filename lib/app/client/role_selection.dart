import 'package:client_app/app/client/registration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Role extends StatefulWidget {
  const Role({super.key});

  @override
  State<Role> createState() => _RoleState();
}

class _RoleState extends State<Role> {
  var level = "I am a vendor,I am providing a transport service";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.black87,
          title: Column(
            children: [
              Text(
                "Role Selection",
                style: GoogleFonts.ibmPlexSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              Text(
                "Please Choose your role",
                style: GoogleFonts.ibmPlexSans(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(height: 40),
            CustomRadioButton(
              label: "I am a vendor,I am providing a transport service",
              value: "I am a vendor,I am providing a transport service",
              groupValue: level,
              onChanged: (value) {
                setState(() {
                  level = value.toString();
                });
              },
            ),
            CustomRadioButton(
              label: "I am a client,I am looking for a transport service",
              value: "I am a client,I am looking for a transport service",
              groupValue: level,
              onChanged: (value) {
                setState(() {
                  level = value.toString();
                });
              },
            ),
            SizedBox(height: 150),
            Container(
              width: 320,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ready()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.ibmPlexSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: RichText(
                text: TextSpan(
                  text: "Attention :",
                  style: GoogleFonts.ibmPlexSans(
                      color: Colors.white,
                      fontSize: 16,
                      decoration: TextDecoration.underline
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: " Freight forwarders are not permitted vendors at this time",
                      style: GoogleFonts.ibmPlexSans(
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                        fontSize: 16,
                      ),
                    ),
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

class CustomRadioButton extends StatelessWidget {
  final String label;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  CustomRadioButton({
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (groupValue != value) {
          onChanged(value);
        }
      },
      child: Container(
        width: 310,
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: groupValue == value ? Colors.blueGrey.shade900 : Colors.transparent,
          border: Border.all(
            color: groupValue == value ? Colors.blue: Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Radio(
                value: value,
                groupValue: groupValue,
                onChanged: onChanged,
                activeColor: Colors.orangeAccent,
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}