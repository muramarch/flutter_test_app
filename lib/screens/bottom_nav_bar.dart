import 'package:flutter/material.dart';
import 'package:test_app/screens/discover_screen.dart';
import 'package:test_app/screens/profile_screen.dart';
import 'package:test_app/screens/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    DiscoverScreen(),
    SearchScreen(),
    Placeholder(),
    Placeholder(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey, // Цвет верхней линии
              width: 1.0, // Ширина верхней линии
            ),
          ),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/bottom_nav_bar_icons/home.png',
                height: 40,
                width: 40,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/bottom_nav_bar_icons/search.png',
                height: 40,
                width: 40,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/bottom_nav_bar_icons/new1.png',
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/bottom_nav_bar_icons/comment.png',
                height: 40,
                width: 40,
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/bottom_nav_bar_icons/person.png',
                height: 40,
                width: 40,
              ),
              label: 'Person',
            ),
          ],
        ),
      ),
    );
  }
}
