import 'package:intl_phone_number_field/intl_phone_number_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../data/stringmanager.dart';


class CodeText extends StatelessWidget {

  CodeText({super.key});

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      height: 40,
      inputFormatters: const [],
      formatter: MaskedInputFormatter('### ### ## ##'),
      initCountry: CountryCodeModel(
          name: "India", dial_code: "+91", code: "IN"),
      betweenPadding: 12,
      onInputChanged: (phone) {
        print(phone.code);
        print(phone.dial_code);
        print(phone.number);
        print(phone.rawFullNumber);
        print(phone.rawNumber);
        print(phone.rawDialCode);
      },
      dialogConfig: DialogConfig(
        backgroundColor: Colors.black,
        searchBoxBackgroundColor: Colors.black,
        searchBoxIconColor: Colors.white60,
        countryItemHeight: 55,
        topBarColor: Colors.white60,
        selectedItemColor: Colors.white60,
        textStyle: TextStyle(
            color:Colors.white60,
            fontSize: 14,
            fontWeight: FontWeight.w600),
        searchBoxTextStyle: TextStyle(
            color: Colors.white60,
            fontSize: 14,
            fontWeight: FontWeight.w600),
        titleStyle: const TextStyle(
            color: Colors.white60,
            fontSize: 18,
            fontWeight: FontWeight.w700),
        searchBoxHintStyle: TextStyle(
            color: Colors.white60,
            fontSize: 14,
            fontWeight: FontWeight.w600),
      ),
      countryConfig: CountryConfig(

        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              width: 0.5, color: Colors.white60),
          //borderRadius: BorderRadius.circular(8),
        ),
        noFlag: false,
        textStyle: const TextStyle(
            color: Colors.white60,
            fontSize: 16,
            fontWeight: FontWeight.w600),

      ),
      phoneConfig: PhoneConfig(
        focusedColor: Colors.white60,
        enabledColor: Colors.white60,
        errorColor: Colors.white60,
        labelStyle: null,
        labelText: null,
        floatingLabelStyle: null,
        focusNode: null,
        radius: 8,
        hintText: StringManager.mobileText,
        borderWidth: 2,
        backgroundColor: Colors.transparent,
        decoration: null,
        popUpErrorText: true,
        autoFocus: false,
        showCursor: false,
        textInputAction: TextInputAction.done,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        errorTextMaxLength: 2,
        errorPadding: const EdgeInsets.only(top: 14),
        errorStyle: const TextStyle(
            color: Color(0xFFFF5494), fontSize: 12, height: 1),
        textStyle: const TextStyle(
            color: Colors.white60,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        hintStyle: TextStyle(
            color: Colors.white60.withOpacity(0.5),
            fontSize: 16,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
