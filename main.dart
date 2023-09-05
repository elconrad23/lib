
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:ilead_df65e/screens/home.dart';
import 'package:ilead_df65e/screens/live.dart';
import 'package:ilead_df65e/screens/search.dart';
import 'package:ilead_df65e/screens/settings.dart';

class iLeadApp extends StatefulWidget {
  const iLeadApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _iLeadAppState createState() => _iLeadAppState();
}

class _iLeadAppState extends State<iLeadApp> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Search(),
    const Live(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home ,
            ),
            label:  ('HOME'),
            activeIcon: Icon(
              Icons.home_filled ,
              color: Colors.purpleAccent,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_off ,
            ),
            label:  ('SEARCH'),
            activeIcon: Icon(
              Icons.search_rounded ,
              color: Colors.purpleAccent,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tv_outlined ,
            ),
            label:  ('LIVE'),
            activeIcon: Icon(
              Icons.home_filled ,
              color: Colors.purpleAccent,
            ),
          ),
          BottomNavigationBarItem(
          icon: Icon(
              Icons.settings ,
            ),
            label:  ('SETTINGS'),
            activeIcon: Icon(
              Icons.settings_sharp ,
              color: Colors.purpleAccent,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
