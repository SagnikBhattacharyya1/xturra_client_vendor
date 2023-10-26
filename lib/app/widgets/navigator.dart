import 'package:client_app/app/client/browse_services.dart';
import 'package:client_app/app/client/client_offer.dart';
import 'package:client_app/app/client/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigationw extends StatelessWidget {
  const Navigationw({super.key});

  @override
  Widget build(BuildContext context) {
    return  Navigator(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/page1':
            return MaterialPageRoute(builder: (context) => HomePage());
          case '/page2':
            return MaterialPageRoute(builder: (context) => BrowserServices());
          case '/page3':
            return MaterialPageRoute(builder: (context) => BrowserServices());
          case '/page4':
            return MaterialPageRoute(builder: (context) => ClientOffer());
          case '/page5':
            return MaterialPageRoute(builder: (context) => ClientOffer());
          default:
            return null;
        }
      },
    );
  }
}
