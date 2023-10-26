import 'package:client_app/app/client/account_edit.dart';
import 'package:client_app/app/client/browse_services.dart';
import 'package:client_app/app/client/browse_vehicles.dart';
import 'package:client_app/app/client/browse_vendors.dart';
import 'package:client_app/app/client/calender.dart';
import 'package:client_app/app/client/check_out_page.dart';
import 'package:client_app/app/client/client_offer.dart';
import 'package:client_app/app/client/great_services.dart';
import 'package:client_app/app/client/history.dart';
import 'package:client_app/app/client/home_page.dart';
import 'package:client_app/app/client/login.dart';
import 'package:client_app/app/client/message.dart';
import 'package:client_app/app/client/messages_page.dart';
import 'package:client_app/app/client/my_account.dart';
import 'package:client_app/app/client/notifications_page.dart';
import 'package:client_app/app/client/offer_page.dart';
import 'package:client_app/app/client/order.dart';
import 'package:client_app/app/client/order_details.dart';
import 'package:client_app/app/client/order_details_1.dart';
import 'package:client_app/app/client/orderdetails_2.dart';
import 'package:client_app/app/client/plus_icon.dart';
import 'package:client_app/app/client/promotion_page.dart';
import 'package:client_app/app/client/quick_quotes.dart';
import 'package:client_app/app/client/quotation.dart';
import 'package:client_app/app/client/registration.dart';
import 'package:client_app/app/client/request_a_quotes.dart';
import 'package:client_app/app/client/sign_up_page.dart';
import 'package:client_app/app/client/splash_screen.dart';
import 'package:client_app/app/client/vendordetails_about.dart';
import 'package:client_app/app/client/vendordetails_contact.dart';
import 'package:client_app/app/client/vendordetails_files.dart';
import 'package:client_app/app/client/vendordetails_photo.dart';
import 'package:client_app/app/client/vendordetails_service.dart';
import 'package:flutter/material.dart';

import 'app/client/vendordetails_jobs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen()  ,



      //Messages() ,
      // OfferPage(),
      //NotificationsPage(),
      //CheckOutPage(),
      //CalenderPage(),
      //QuickQuotes(),
      //RequestaQuotes(),
      //PlusIcon(),
      //VDcontacts(),
      //VDjobs(),
      //VDfiles(),
      //VDphotos(),
      // VDabout(),
      // VDServices(),
      //BrowseVehicles(),
      //BrowserServices(),
      //BrowseVendors(),
      // GreatServices()
      //PromotionPage(),
      //HomePage(),
      //CreatePageTwo
      //SignUpTwo
      //CreatePage
      //SignUp

      debugShowCheckedModeBanner: false,
    );
  }
}