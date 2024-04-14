import 'package:flutter/material.dart';
import 'package:groceryapp/nav_bar_icons.dart';

import 'FavouritePage.dart';
import 'accountpage.dart';
import 'cartPage.dart';
import 'explorePage.dart';
import 'home_screen.dart';

class HomeScreenNavigation extends StatefulWidget {
  const HomeScreenNavigation({super.key});

  @override
  State<HomeScreenNavigation> createState() => _HomeScreenNavigationState();
}

class _HomeScreenNavigationState extends State<HomeScreenNavigation> {
   final screens = [
    const HomeScreen(),
    ExplorePage(),
    const CartPage(),
    const FavouritePage(),
    const AccountPage()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF53B175),
        unselectedItemColor: const Color(0xff181725),
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: 'Gilroy',
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          fontFamily: 'Gilroy',
        ),
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              NavBar.store,
            ),
            label: 'Shop',
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              NavBar.explore,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              NavBar.cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              NavBar.favourite,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              NavBar.account,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
