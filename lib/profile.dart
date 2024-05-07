import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:binny_project_g3/home.dart';
import 'package:binny_project_g3/reward.dart';
import 'package:binny_project_g3/scan.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF7ED9F5),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios_new, size: 30),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/profile/binn.png',
                fit: BoxFit.cover,
                height: 22,
              ),
              SizedBox(
                width: 10,
              ), // Adjust the spacing between the title and the icon
              Icon(Icons.settings_outlined, size: 30),
            ],
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
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: MediaQuery.of(context).size.height * 0.75,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xFF7ED9F5), Colors.white],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 5,
                  child: Image.asset('assets/profile/BG_img.png'),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 3.75,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height -
                        (MediaQuery.of(context).size.height / 3.75),
                    child: ProfileDetail(),
                  ),
                ),
                Positioned(
                  top: (MediaQuery.of(context).size.height / 3.75) -
                      (114 * 0.65),
                  left: (MediaQuery.of(context).size.width / 2) - (114 / 2),
                  child: ClipOval(
                    child: Container(
                      color: Colors.black,
                      width: 114,
                      height: 114,
                      child: Image.asset(
                        'assets/profile/profile_img.png',
                        fit: BoxFit.contain,
                      ),
                    ),
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
                        MaterialPageRoute(builder: (context) => Home()),
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
                        MaterialPageRoute(builder: (context) => Scan()),
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
                        MaterialPageRoute(builder: (context) => RewardPage()),
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

class ProfileDetail extends StatefulWidget {
  ProfileDetail({Key? key});

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  List<String> list = [
    'มกราคม',
    'กุมภาพันธ์',
    'มีนาคม',
    'เมษายน',
    'พฤษภาคม',
    'มิถุนายน',
    'กรกฎาคม',
    'สิงหาคม',
    'กันยายน',
    'ตุลาคม',
    'พฤศจิกายน',
    'ธันวาคม'
  ];

  final topicsAndPoints = [
    {
      'topic': 'พลาสติกใส PET',
      'point': '186 kg',
      'mycolor': const Color(0xFF4FB78D),
      'flex': 4
    },
    {
      'topic': 'กระป๋องอลูมิเนียม',
      'point': '120 kg',
      'mycolor': const Color(0xFFC4E7D9),
      'flex': 5
    },
    {
      'topic': 'กล่องเครื่องดื่ม UHT',
      'point': '48',
      'mycolor': const Color(0xFFD7EEAA),
      'flex': 2
    },
    {
      'topic': 'น้ำมันพืชใช้แล้ว',
      'point': '150 kg',
      'mycolor': const Color(0xFFEECFAA),
      'flex': 5
    },
  ];

  String dropdownValue = "";

  @override
  void initState() {
    super.initState();
    dropdownValue = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildHeader(),
          _buildProfileInfo(),
          SizedBox(height: 10),
          _buildFollowers(),
          SizedBox(height: 10),
          _buildStats(),
          SizedBox(height: 10),
          _buildGridView()
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(Icons.edit_square, color: Color(0xFF02C275)),
        SizedBox(width: 5),
        Text(
          'แก้ไขโปรไฟล์',
          style: TextStyle(
            color: Color(0xFF02C275),
            fontSize: 12,
            fontFamily: 'IBM Plex Sans Thai',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.40,
          ),
        )
      ],
    );
  }

  Widget _buildProfileInfo() {
    return Padding(
      padding: EdgeInsets.all(11),
      child: Column(
        children: [
          Text(
            'Binny Bun',
            style: TextStyle(
              color: Color(0xFF232323),
              fontSize: 32,
              fontFamily: 'IBM Plex Sans Thai',
              fontWeight: FontWeight.w500,
              height: 0,
              letterSpacing: -0.40,
            ),
          ),
          SizedBox(height: 11),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '@binny.bin',
                style: TextStyle(
                  color: Color(0xFF232323),
                  fontSize: 14,
                  fontFamily: 'IBM Plex Sans Thai',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.40,
                ),
              ),
              SizedBox(width: 4),
              Icon(Icons.copy, size: 15)
            ],
          )
        ],
      ),
    );
  }

  Widget _buildFollowers() {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildFollowerItem(15, 'กำลังติดตาม'),
          Container(
            width: 1,
            height: 62,
            color: Color(0xFFE2E2E2),
          ),
          _buildFollowerItem(4, 'ผู้ติดตาม'),
        ],
      ),
    );
  }

  Widget _buildFollowerItem(int num, String content) {
    return Column(
      children: [
        Text(
          '$num',
          style: TextStyle(
            color: Color(0xFF232323),
            fontSize: 24,
            fontFamily: 'IBM Plex Sans Thai',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.40,
          ),
        ),
        Text(
          content,
          style: TextStyle(
            color: Color(0xFF02C275),
            fontSize: 16,
            fontFamily: 'IBM Plex Sans Thai',
            fontWeight: FontWeight.w500,
            height: 0,
            letterSpacing: -0.40,
          ),
        ),
      ],
    );
  }

  Widget _buildStats() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'สถิติการแยกขยะของฉัน',
              style: TextStyle(
                color: Color(0xFF7A7A7A),
                fontSize: 20,
                fontFamily: 'IBM Plex Sans Thai',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.40,
              ),
            ),
            DropdownButton(
              elevation: 20,
              icon: const Icon(Icons.arrow_drop_down_rounded),
              value: dropdownValue,
              style: TextStyle(
                color: Color(0xFF7A7A7A),
                fontSize: 13,
                fontFamily: 'IBM Plex Sans Thai',
                fontWeight: FontWeight.w400,
              ),
              underline: Container(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
              items: list.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              '386',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF232323),
                fontSize: 48,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 0.03,
                letterSpacing: -2,
              ),
            ),
            SizedBox(width: 8),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Color(0xFFE0F0E4),
              ),
              child: Text(
                '+2.4%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF4FB78D),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Container(
          height: 10,
          child: Row(
            children: topicsAndPoints.map((topicData) {
              return Expanded(
                flex: topicData['flex'] as int,
                child: Container(
                  color: topicData['mycolor'] as Color,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildGridView() {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 13.0,
          childAspectRatio: (200 / 110),
        ),
        itemCount: topicsAndPoints.length,
        itemBuilder: (BuildContext context, int index) {
          final topic = topicsAndPoints[index]['topic'] as String;
          final point = topicsAndPoints[index]['point'] as String;
          final colorValue = topicsAndPoints[index]['mycolor'];
          final color =
              colorValue != null ? colorValue as Color : Colors.transparent;

          // Build the point box using the provided method
          return _buildPointBox(topic, point, color);
        },
      ),
    );
  }

  Widget _buildPointBox(String topic, String point, Color _color) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1.0, color: Color(0xFFF2F2F2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipOval(
                child: Container(height: 6, width: 6, color: _color),
              ),
              SizedBox(width: 9),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  topic,
                  style: TextStyle(
                    color: Color(0xFF7A7A7A),
                    fontSize: MediaQuery.of(context).size.width * 0.030,
                    fontFamily: 'IBM Plex Sans Thai',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            point,
            style: TextStyle(
              color: Color(0xFF232323),
              fontSize: 24,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
