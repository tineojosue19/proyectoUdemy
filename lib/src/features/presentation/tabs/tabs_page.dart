import 'package:flutter/material.dart';
import 'package:udemyyyyy/src/features/presentation/tabs/explore_tab.dart';
import 'package:udemyyyyy/src/features/presentation/tabs/favorites_tab.dart';
import 'package:udemyyyyy/src/features/presentation/tabs/my_order.dart';
import 'package:udemyyyyy/src/features/presentation/tabs/profile_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage ({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavoritesTab(),
    ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget( int index ) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget,
        showUnselectedLabels: true,
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'My Order'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Favorites'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Profile'
          ),

        ]
    );
  }
}