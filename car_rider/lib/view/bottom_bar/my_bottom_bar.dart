import 'package:car_rider/view/booking_tab/booking_tab.dart';
import 'package:car_rider/view/home_tab/home_screen.dart';
import 'package:car_rider/view/profile_tab/profile_screen.dart';
import 'package:car_rider/view/wallet_tab/wallet_screen.dart';
import 'package:car_rider/view/wallet_tab/wallet_screen_tab.dart';
import 'package:flutter/material.dart';

import '../../res/colors.dart';
import '../../res/dimensions.dart';
import '../../res/styles.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    BookingTabScreen(),
    WalletScreenTab(),
   ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: shadowDecoration(20, 5),
        height: height(context) * 0.1,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(21)),
          child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: black.withOpacity(0.4),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/navbar1.png')),
                  activeIcon:
                      ImageIcon(AssetImage('assets/images/active1.png')),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/navbar2.png')),
                  activeIcon:
                      ImageIcon(AssetImage('assets/images/active2.png')),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/navbar3.png')),

                  label: '',
                  // backgroundColor: Colors.blue,
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/navbar4.png')),
                  activeIcon: Icon(Icons.person_rounded),
                  label: '',
                  // backgroundColor: Colors.blue,
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: primary,
              iconSize: 40,
              onTap: _onItemTapped,
              elevation: 5),
        ),
      ),
    );
  }
}
