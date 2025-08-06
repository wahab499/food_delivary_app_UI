import 'package:flutter/material.dart';
import 'package:food_delivery/cart.dart';
import 'package:food_delivery/chat.dart';
import 'package:food_delivery/home.dart';
import 'package:food_delivery/person.dart';
import 'package:food_delivery/popular_resturant.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    homeScreen(),
    Person(),
    Cart(),
    Chat(),
    PopularResturant(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(child: _widgetOptions.elementAt(_selectedIndex)),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.all(10),
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GNav(
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  haptic: true,
                  tabBorderRadius: 15,
                  curve: Curves.easeOutExpo,
                  duration: const Duration(milliseconds: 900),
                  gap: 8,
                  color: Colors.green[800],
                  activeColor: Colors.green,
                  iconSize: 24,
                  tabBackgroundColor: Colors.green.withAlpha(20),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  tabs: const [
                    GButton(icon: Icons.home, text: 'Home'),
                    GButton(icon: Icons.person, text: 'Person'),
                    GButton(icon: Icons.shopping_bag, text: 'Add to Cart'),
                    GButton(icon: Icons.chat, text: 'Chat'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
