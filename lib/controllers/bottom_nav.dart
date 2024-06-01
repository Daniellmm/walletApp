import 'package:flutter/material.dart';
import 'package:new_project/contants/colors.dart';
import 'package:new_project/pages/screens/history_screen.dart';
import 'package:new_project/pages/screens/home_screen.dart';
import 'package:new_project/pages/screens/service_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  // List of widgets to be displayed for each tab
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ServicePage(),
    HistoryPage(),
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.transparent, // Transparent background
          boxShadow: [
           
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 13, 4, 37),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_sharp),
              label: 'History',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.calendar_month_sharp),
            //   label: 'Profile',
            // ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: green,
          unselectedItemColor: Colors.grey[700],
          onTap: _onItemTapped,
          elevation: 0,
        ),
      ),
    );
  }
}
