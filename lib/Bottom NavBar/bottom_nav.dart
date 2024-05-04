import 'package:flutter/material.dart';
import 'package:binny_project_g3/homescreen.dart';
import 'package:binny_project_g3/Reward.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.black,
          height: 70,
          child: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                child: Text(
                  "หน้าหลัก",
                  style: TextStyle(
                    fontFamily: 'MyCustomFont',
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                icon: Icon(Icons.qr_code_scanner_rounded),
                child: Text(
                  "สแกนแยกขยะ",
                  style: TextStyle(
                    fontFamily: 'MyCustomFont',
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                icon: Icon(Icons.account_box_rounded),
                child: Text(
                  "แต้มสะสม",
                  style: TextStyle(
                    fontFamily: 'MyCustomFont',
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                
              ),
              Tab(
                icon: Icon(Icons.account_circle_outlined),
                child: Text(
                  "โปรไฟล์",
                  style: TextStyle(
                    fontFamily: 'MyCustomFont',
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                
              ),
            ],
            unselectedLabelColor: Color(0xFF999999),
            labelColor: Colors.white,
            indicatorColor: Colors.transparent,
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            //MoreScreen(),
            RewardPage(),
          ],
        ),
      ),
    );
  }
}
