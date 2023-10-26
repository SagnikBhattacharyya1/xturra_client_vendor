import '../data/asset_manager.dart';
import 'package:client_app/app/client/browse_vendors.dart';
import 'package:client_app/app/client/client_offer.dart';
import 'package:client_app/app/client/home_page.dart';
import 'package:client_app/app/client/notifications_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class BNavBar extends StatefulWidget {

  BNavBar({super.key});

  @override
  State<BNavBar> createState() => _BNavBarState();
}

class _BNavBarState extends State<BNavBar> {
  int currentIndex = 0;
  // Create a mapping from default icon to selected icon
  Map<int, String> iconMappings = {
    0: 'assets/selected_icon1.png',
    1: 'assets/selected_icon2.png',
    2: 'assets/selected_icon3.png',
  };

  String? _getImagePath(int index) {
    // Use the mapping to get the appropriate icon path
    if (currentIndex == index) {
      return iconMappings[index];
    } else {
      // Return the path to the default icon
      return 'assets/default_icon.png'; // Replace with your default icon asset path
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _pages = [HomePage(),BrowseVendors(),BrowseVendors(), ClientOffer(), NotificationsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      //extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: currentIndex,
       onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff272727),
        iconSize: 35,
        selectedItemColor: Colors.blue,
        selectedFontSize: 10,
        showUnselectedLabels: false,
        unselectedFontSize: 10,
        unselectedItemColor: Colors.white60,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(AssetManager.bottomNav_home),fit: BoxFit.fitHeight),

                  ),
                  width: 25,
                  height: 25,),
              ),
              label: "",
              backgroundColor: Colors.white60),

          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(AssetManager.bottomNav_search),fit: BoxFit.fitHeight),

                  ),
                  width: 25,
                  height: 25,),
              ),
              label: "",
              backgroundColor: Colors.white60
          ),

          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 40,
                  child: Center(child: Icon(Icons.add,size: 45,color: Colors.white60,)),
                ),
              ),
            ),
            label: "",
            backgroundColor: Colors.white60,
          ),

          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AssetManager.bottomNav_shop),fit: BoxFit.fitHeight),

                ),
                width: 25,
                height: 25,),
            ),
            label: "",
            backgroundColor: Colors.white60,
          ),

          BottomNavigationBarItem(
              icon: Padding(

                padding: const EdgeInsets.only(top: 50),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(AssetManager.bottomNav_message),fit: BoxFit.fitHeight),

                  ),
                  width: 25,
                  height: 25,),
              ),
              label: "",
              backgroundColor: Colors.white60
          ),
        ],
      ),
    );
  }

}
