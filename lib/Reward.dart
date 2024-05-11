import 'package:binny_project_g3/homescreen.dart';
import 'package:binny_project_g3/profile.dart';
import 'package:binny_project_g3/scan_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class Rewardpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.green, // Example theme
      ),
      home: RewardScreen(), // Your starting page
    );
  }
}

class RewardScreen extends StatefulWidget {
  const RewardScreen({Key? key}) : super(key: key);

  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // 2 is the number of tabs
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
          appBar: AppBar(
          title: Text("Logo"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Center(
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  indicatorColor: Colors.green,
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: "สะสมคะแนน"),
                    Tab(text: "แลกของ"),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Stack(children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height + 50,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 3.75,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height -
                        (MediaQuery.of(context).size.height / 3.75),
                    child: RewardDetail(),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 22,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 8.50,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Homescreen()),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          size: 30,
                        ),
                        SizedBox(height: 2),
                        Text('หน้าแรก')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) =>  ScanHomePage() ),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.qr_code,
                          size: 30,
                        ),
                        SizedBox(height: 2),
                        Text('สแกนแยกขยะ')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => RewardScreen()),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.comment_outlined,
                          size: 30,
                        ),
                        SizedBox(height: 2),
                        Text('แต้มสะสม')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.person_outlined,
                          size: 30,
                        ),
                        SizedBox(height: 2),
                        Text('โปรไฟล์')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class RewardDetail extends StatefulWidget {
  @override
  _RewardPageState createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardDetail> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          // This is the content for "สะสมคะแนน" tab
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.green,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'แต้มสะสมทั้งหมด',
                                style: TextStyle(fontSize: 24, color: Colors.white),
                              ),
                              Spacer(),
                              Icon(Icons.more_vert, color: Colors.white),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            '230',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () { /* กำหนดการกระทำ */ },
                                child: Row(
                                  children: [
                                    Icon(Icons.history, color: Colors.white),
                                    Text('ประวัติ', style: TextStyle(color: Colors.white, fontSize: 12)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 2), // เพิ่มช่องว่างระหว่างปุ่ม
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () { /* การกระทำ */ },
                                child: Row(
                                  children: [
                                    Icon(Icons.qr_code_scanner, color: Colors.white),
                                    Text('สแกน', style: TextStyle(color: Colors.white, fontSize: 12)),
                                  ],
                                ),
                              ),
                              SizedBox(width: 2),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () { /* การกระทำ */ },
                                child: Row(
                                  children: [
                                    Icon(Icons.attach_money, color: Colors.white),
                                    Text('แลกเงิน', style: TextStyle(color: Colors.white, fontSize: 12)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'แลกคูปองส่วนลด',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          '| ร้านอาหารใกล้ฉัน',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* กำหนดการกระทำ */ },
                          child: Column(
                            children: [
                     GestureDetector(
                      onTap: () {
                          // เปิดลิงก์เมื่อรูปถูกคลิก
                          launch('https://www.kfc.co.th/');
                                 },
                      child:Image.asset(
                                'assets/KFC.png',
                                height: 50,
                              ),
                     ),
                              Text(
                                'KFC',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        // เพิ่มปุ่มแนวนอนอีก 4 ปุ่ม
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                        GestureDetector(
                        onTap: () {
                       // เปิดลิงก์เมื่อรูปถูกคลิก
                      launch('https://jonessalad.com/');
                            },
                            child:Image.asset(
                                'assets/JonesSalad .png',
                                height: 50,
                              ),
                        ),
                              Text(
                                'Jones Salad',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                      GestureDetector(
                      onTap: () {
                      // เปิดลิงก์เมื่อรูปถูกคลิก
                    launch('https://www.chesters.co.th/');
                        },
                           child:Image.asset(
                                'assets/Chesters.png',
                                height: 50,
                              ),
                      ),
                              Text(
                                'Chesters',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                    GestureDetector(
                    onTap: () {
                    // เปิดลิงก์เมื่อรูปถูกคลิก
                       launch('https://www.wongnai.com/restaurants/2478830Wc-mixue-%E0%B8%9A%E0%B8%B2%E0%B8%87%E0%B8%A1%E0%B8%94');
                           },
                              child: Image.asset(
                                'assets/MIZUE.png',
                                height: 50,
                              ),
                    ),
                              Text(
                                'MIZUE',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                        GestureDetector(
                onTap: () {
                  // เปิดลิงก์เมื่อรูปถูกคลิก
                      launch(' https://www.ohkajhuorganic.com/en/');
                        },
                          child: Image.asset(
                                'assets/โอ้กะจู๋.png',
                                height: 50,
                              ),
                        ),
                              Text(
                                'โอ้กะจู๋',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          '| ร้านสรรพสินค้าใกล้ฉัน',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* กำหนดการกระทำ */ },
                          child: Column(
                            children: [
                          GestureDetector(
                            onTap: () {
                            // เปิดลิงก์เมื่อรูปถูกคลิก
                           launch('https://www.bigc.co.th/');
                             },
                         child:Image.asset(
                                'assets/Big C.png',
                                height: 50,
                              ),
                          ),
                              Text(
                                'Big C',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        // เพิ่มปุ่มแนวนอนอีก 4 ปุ่ม
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                            GestureDetector(
                            onTap: () {
                            // เปิดลิงก์เมื่อรูปถูกคลิก
                             launch('https://store.boots.co.th/th/');
                              },
                        child:Image.asset(
                                'assets/Boots.png',
                                height: 50,
                              ),
                            ),
                              Text(
                                'Boots',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                          GestureDetector(
                            onTap: () {
                            // เปิดลิงก์เมื่อรูปถูกคลิก
                            launch(' https://www.aeonthailand.co.th/th/');
                               },
                              child:Image.asset(
                                'assets/Maxvalu.png',
                                height: 50,
                              ),
                          ),
                              Text(
                                'Maxvalus',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                            GestureDetector(
                             onTap: () {
                               // เปิดลิงก์เมื่อรูปถูกคลิก
                             launch(' https://topsdaily.tops.co.th/');
                               },
                          child:Image.asset(
                                'assets/Tops daily.png',
                                height: 50,
                              ),
                            ),
                              Text(
                                'Tops daily',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                           GestureDetector(
                           onTap: () {
                            // เปิดลิงก์เมื่อรูปถูกคลิก
                            launch(' https://www.tops.co.th/th');
                             },
                      child:Image.asset(
                                'assets/Tops.png',
                                height: 50,
                              ),
                           ),
                              Text(
                                'Tops',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* กำหนดการกระทำ */ },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/Frame1.png', // เปลี่ยนตามไฟล์รูปที่ต้องการ
                                height: 120,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* กำหนดการกระทำ */ },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/Frame2.png', // เปลี่ยนตามไฟล์รูปที่ต้องการ
                                height: 120,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 2),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* กำหนดการกระทำ */ },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/Frame3.png', // เปลี่ยนตามไฟล์รูปที่ต้องการ
                                height: 120,
                              ),
                            ],
                          ),
                        ),
                        // เพิ่ม ElevatedButton ตามต้องการ
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          '| ร้านขายยา',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* กำหนดการกระทำ */ },
                          child: Column(
                            children: [
                        GestureDetector(
                          onTap: () {
                            // เปิดลิงก์เมื่อรูปถูกคลิก
                                 launch(' https://www.fascino.co.th/');
                          },
                              child:Image.asset(
                                'assets/ร้านยาฟาสซิโน.png',
                                height: 50,
                              ),
                        ),
                              Text(
                                'ร้านยาฟาสซิโน',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                            GestureDetector(
                            onTap: () {
                         // เปิดลิงก์เมื่อรูปถูกคลิก
                         launch('  https://shopee.co.th/waranya_ice');
                          },
                      child:Image.asset(
                                'assets/บ้านยา ฟาร์มาเฮ้าส์.png',
                                height: 50,
                              ),
                            ),
                              Text(
                                'บ้านยา ฟาร์มาเฮ้าส์',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                             GestureDetector(
                               onTap: () {
                                // เปิดลิงก์เมื่อรูปถูกคลิก
                             launch('  https://www.bangkokdrugstore.co.th/home.php');
                              },
                           child:Image.asset(
                                'assets/ร้านยากรุงเทพ.png',
                                height: 50,
                              ),
                             ),
                              Text(
                                'ร้านยากรุงเทพ',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          onPressed: () { /* การกระทำ */ },
                          child: Column(
                            children: [
                       GestureDetector(
                          onTap: () {
                         // เปิดลิงก์เมื่อรูปถูกคลิก
                         launch('  https://www.exta.co.th/');
                          },
                       child:Image.asset(
                                'assets/eXta Plus.png',
                                height: 50,
                              ),
                       ),
                              Text(
                                'eXta Plus',
                                style: TextStyle(fontSize: 16, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Content for the "แลกของ" tab
          Container(
            color: Colors.black, // สีพื้นหลังใหม่
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'แต้มสะสมทั้งหมด',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 0),
                                  Text(
                                    '230',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: double.infinity,
                                width: 1, // กำหนดความกว้างของเส้น
                                color: Colors.white, // สีของเส้น
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.shopping_basket,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                  Text(
                                    'สินค้าในตระกร้า',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 0),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'สินค้าอิเล็กทรอนิกส์',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Button with image and text below
                        Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            // เปิดลิงก์เมื่อรูปถูกคลิก
                                            launch('https://www.apple.com/th/shop/buy-ipad/ipad/64gb-%E0%B8%9F%E0%B9%89%E0%B8%B2-wifi');
                                          },
                                       child:  SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc1.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                        ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'Apple iPad Gen 10\n55,555 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                                // เปิดลิงก์เมื่อรูปถูกคลิก
                                launch('https://www.trendhunter.com/trends/icemouse2');
                                     },
                                        child :SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc2.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'เมาส์ไม้ไผ่\n3,555 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                        // เปิดลิงก์เมื่อรูปถูกคลิก
                          launch('https://store.sony.co.th/th/products/wh-ch520');
                                },
                                        child:SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc3.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'หูฟังไร้สาย\n35,000 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                              // เปิดลิงก์เมื่อรูปถูกคลิก
                            launch('https://www.bnn.in.th/th/mkt/seo-samsung-galaxy-s24-series');
                                },
                                       child:  SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc4.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'Galaxy S24 Ultra\n66,666 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'เครื่องแต่งกาย',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Button with image and text below
                        Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                        onTap: () {
                                      // เปิดลิงก์เมื่อรูปถูกคลิก
                                      launch('https://uptoyou.live/product-detail.html?id=6');
                            },
                                        child:SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc5.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                        ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'RevifeFiberjackget\n800 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                        // เปิดลิงก์เมื่อรูปถูกคลิก
                              launch('https://rubberkiller.com/products/typo-logo-tyvek-tote-bag');
                                         },
                                       child:  SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc6.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'Happy Typo Bag\n700 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                            // เปิดลิงก์เมื่อรูปถูกคลิก
                            launch('https://www.wearepomme.com/shop/tops/tee/');
                                    },
                                        child:SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc7.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'T-shirt collection \n555 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                                  // เปิดลิงก์เมื่อรูปถูกคลิก
                                    launch('https://treetribe.com/pages/leaf-leather');
                                         },
                                       child:  SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc8.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'Leaf Leather\n1,333 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'สินค้าเพื่อสุขภาพ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Button with image and text below
                        Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                               // เปิดลิงก์เมื่อรูปถูกคลิก
                              launch('https://www.adidas.co.th/th/marimekko');
                                    },
                                       child:  SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc9.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'ชุดออกกำลังกาย\n4,550 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                                     // เปิดลิงก์เมื่อรูปถูกคลิก
                                        launch('https://www.em-bike.com/em-eco.html');
                                              },
                                        child:SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc10.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'จักรยานไฟฟ้า\n5,555 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                                  // เปิดลิงก์เมื่อรูปถูกคลิก
                                  launch('https://kurma-yoga.com/');
                                       },
                                       child:  SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc11.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'Kurma Yoga Mat\n2,000 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                              // เปิดลิงก์เมื่อรูปถูกคลิก
                                 launch('https://www.irontec.co/%E0%B8%88%E0%B8%B1%E0%B8%81%E0%B8%A3%E0%B8%A2%E0%B8%B2%E0%B8%99%E0%B8%AD%E0%B8%AD%E0%B8%81%E0%B8%81%E0%B8%B3%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%81%E0%B8%B2%E0%B8%A2-exercise-bike/');
                                   },
                            child:SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc12.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'เครื่องออกกำลังกาย\n8,969 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'สินค้าทั่วไป & ข้าวของเครื่องใช้',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // Button with image and text below
                        Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                                    // เปิดลิงก์เมื่อรูปถูกคลิก
                                    launch('https://shop.line.me/@qualydesign/product/1004323236');
                                    },
                                    child:SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc13.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'Penguin Mug\n500 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                               // เปิดลิงก์เมื่อรูปถูกคลิก
                                launch('https://qualydesign.com/international/shop/all-products/save-turtle-soap-tray/');
                                  },
                                child:SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc14.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'Save Turtle Soap\n250 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                                // เปิดลิงก์เมื่อรูปถูกคลิก
                                     launch('https://www.instagram.com/eightsaday/reel/C4YK_1JPgm0/');
                                     },
                                  child:SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc15.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'ที่รองแก้ว “BOPE”\n500 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20), // Add space between buttons
                                SizedBox(
                                  width: 150, // New width of the button
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Add your button onPressed logic here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                    GestureDetector(
                                    onTap: () {
                                   // เปิดลิงก์เมื่อรูปถูกคลิก
                                        launch('https://salahmade.com/artisan/bope-th/');
                                      },
                                    child:SizedBox(
                                          width: double.infinity,
                                          height: 100, // Set the height of the button
                                          child: Image.asset(
                                            'assets/picc16.png', // Path to your image
                                            fit: BoxFit.cover, // Ensure the image covers the entire space
                                          ),
                                        ),
                                    ),
                                        SizedBox(height: 5),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0), // Adjust the bottom padding here
                                          child: Text(
                                            'เก้าอี้ “BOPE”\n999 คะแนน',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}