// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:binny_project_g3/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selected_index = 0;

  void _navgateBottomBar(int index) {
    setState(() {
      _selected_index = index;
    });
  }

  final List _pages = [
    HomePage(),
//    BrowsePage(),
//   RadioPage(),
//    LibraryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selected_index],
      bottomNavigationBar: Container(
        height: 90,

        // padding: EdgeInsets.only(bottom: 0),
        // color: Colors.amber,
        child: GlassFlexContainer(
          borderRadius: BorderRadius.zero,
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(15),
          // //   topRight: Radius.circular(15),
          // // ),
          borderGradient: LinearGradient(
            colors: [
              Color.fromARGB(0, 11, 11, 11)
            ], // Add this line to remove border stroke
            stops: [0],
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              // Apply transparent color to both splashColor and highlightColor
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _selected_index,
              onTap: _navgateBottomBar,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                    size: 24,
                  ),
                  label: 'หน้าหลัก',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.grid_view_rounded,
                      size: 24,
                    ),
                    label: 'สแกนแยกขยะ'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.sensors,
                      size: 24,
                    ),
                    label: 'วิทยุ'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.subscriptions_rounded,
                      size: 24,
                    ),
                    label: 'คลัง'),
              ],
              elevation: 0,
              selectedLabelStyle: TextStyle(color: Colors.white),
              selectedItemColor: const Color.fromARGB(255, 255, 60, 68),
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              backgroundColor: Colors.transparent,
              unselectedFontSize: 13.0,
              selectedFontSize: 13.0,
            ),
          ),
        ),
      ),
    );
  }
}
