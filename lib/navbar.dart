import 'package:flutter/material.dart';
import 'package:simple_ui/screens/home.dart';
import 'package:simple_ui/screens/transfer.dart';
import 'package:simple_ui/screens/wallet.dart';
import 'package:simple_ui/screens/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int screenIndex = 0;

  static final List<Widget> screens = <Widget>[
    const Home(),
    const Transfer(),
    const Wallet(),
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: screenIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xff89909b),
        selectedItemColor: Color(0xff16cdc4),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color(0xff16cdc4),
        ),
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.compare_arrows_outlined), label: 'Transfer'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: screenIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
