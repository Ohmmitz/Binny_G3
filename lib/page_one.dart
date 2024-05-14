import 'package:binny_project_g3/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:binny_project_g3/page_eight.dart';
import 'package:binny_project_g3/page_five.dart';
import 'package:binny_project_g3/page_four.dart';
import 'package:binny_project_g3/page_nine.dart';
import 'package:binny_project_g3/page_seven.dart';
import 'package:binny_project_g3/page_six.dart';
import 'package:binny_project_g3/page_three.dart';
import 'package:binny_project_g3/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int _selectedIndex = 0;
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!_focusNode.hasPrimaryFocus) {
          _focusNode.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Homescreen()),
              );
            },
          ),
          title: Row(
            children: [
              Image.asset('assets/b1.png'),
              const SizedBox(width: 1),
              Image.asset('assets/b2.png'),
              const SizedBox(width: 155),
              Image.asset('assets/Group 23.png'),
              const SizedBox(width: 10),
            ],
          ), 
        ),
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(right: 190, left: 15, top: 1),
                  child: Text(
                    'กระทู้ถามตอบ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.green,
                      fontFamily: 'MyBinnyFont',
                    ),
                  ),
                ), // Title
                const Padding(
                  padding: EdgeInsets.only(right: 190, left: 15),
                  child: Text(
                    '#ประเด็นคำถามยอดฮิตวันนี้',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'MyBinnyFont',
                    ),
                  ),
                ), // Title
                const SizedBox(height: 15),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageFour()),
                            );
                          },
                          child: Container(
                            width: 300, // กำหนดความกว้าง
                            height: 265, // กำหนดความสูง
                            decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.fromLTRB(20, 15, 15, 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'ทำไมพวกเราถึงต้อง',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: 'MyBinnyFont',
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  'แยกขยะด้วยหรอคะ?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    fontFamily: 'MyBinnyFont',
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  'Top comment',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'MyBinnyFont',
                                    color: Colors.green,
                                  ),
                                ),
                                const Text(
                                  'ส่วนตัวผมมองเป็นในด้านของความรับ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'MyBinnyFont',
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  'ผิดชอบที่มีต่อสังคมมากกว่าครับ เพราะ...',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'MyBinnyFont',
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 40),
                                Row(
                                  children: [
                                    const SizedBox(width: 130),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Anonymous',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'MyBinnyFont',
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '21 ก.พ. 67',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'MyBinnyFont',
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Image.asset(
                                      'assets/logo.png',
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Ink(
                          width: 300, // กำหนดความกว้าง
                          height: 265, // กำหนดความสูง
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageTwo()),
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 15, 15, 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'สอบถามหน่อยครับ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      fontFamily: 'YourFontFamily',
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Text(
                                    'ส่วนตัวเลี้ยงน้องแมว...',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      fontFamily: 'MyBinnyFont',
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  const Text(
                                    'Top comment',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'MyBinnyFont',
                                      color: Colors.green,
                                    ),
                                  ),
                                  const Text(
                                    'พวกถุงอาหารตากให้แห้ง ส่ง N15 ครับ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'YourFontFamily',
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Text(
                                    'กระป๋องขายของเก่าได้ครับ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'MyBinnyFont',
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  Row(
                                    children: [
                                      const SizedBox(width: 130),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Anonymous',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'MyBinnyFont',
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '21 ก.พ. 67',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: 'MyBinnyFont',
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 10),
                                      Image.asset(
                                        'assets/logo.png',
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageFive()),
                            );
                          },
                        child:  Container(
                          width: 300, // กำหนดความกว้าง
                          height: 265, // กำหนดความสูง
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.fromLTRB(20, 15, 15, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'สอบถามค่ะ(มือใหม่หัด',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'MyBinnyFont',
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'แยก) ตัวที่รองพวกห...',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'MyBinnyFont',
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'Top comment',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'MyBinnyFont',
                                  color: Colors.green,
                                ),
                              ),
                              const Text(
                                'ทางนี้ตากให้แห้งค่ะแบบไม่ได้เอาด้านใน',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'MyBinnyFont',
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'ออกค่ะ แล้วส่ง n15 ค่ะ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'MyBinnyFont',
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 40),
                              Row(
                                children: [
                                  const SizedBox(width: 130),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Anonymous',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'MyBinnyFont',
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '21 ก.พ. 67',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'MyBinnyFont',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    'assets/logo.png',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageSix()),
                            );
                          },
                        child:  Container(
                          width: 300, // กำหนดความกว้าง
                          height: 265, // กำหนดความสูง
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.fromLTRB(20, 15, 15, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'อุปกรณ์อิเล็กทรอนิกส์,',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'MyBinnyFont',
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'ถ่านสามารถบริจาคไ...',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  fontFamily: 'MyBinnyFont',
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'Top comment',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'MyBinnyFont',
                                  color: Colors.green,
                                ),
                              ),
                              const Text(
                                'AIS Shop',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'MyBinnyFont',
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'ตามห้างรับอุปกรณ์อิเล็กทรอนิกส์ค่ะ ส่...',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'YourFontFamily',
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 40),
                              Row(
                                children: [
                                  const SizedBox(width: 130),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Anonymous',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'MyBinnyFont',
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '21 ก.พ. 67',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'MyBinnyFont',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    'assets/logo.png',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                ), // Comment Container
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          offset: Offset(10, 15),
                          blurRadius: 25,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        ListView(
                          padding: const EdgeInsets.only(top: 45),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 5,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18, top: 10, bottom: 8),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => PageSeven()), // เปลี่ยนเป็นหน้าที่ต้องการไป
                                      );
                                    },
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/men.png'),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Teewara I.',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                    Text(
                                                      '2024-02-21 13:02',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                    'assets/Vectorw.png'),
                                                const SizedBox(width: 10),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                          'ใครมีวิธีจัดการขยะเปียกในคอนโดบ้างครับ?                             หรือควรแยกขยะเศษอาหารยังไง แนะนำทีครับ'),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Image.asset(
                                                'assets/Vector.png',
                                                width: 35),
                                            const SizedBox(width: 1),
                                            const Text('10'),
                                            Image.asset(
                                                'assets/chat.png',
                                                width: 30),
                                            const SizedBox(width: 1),
                                            const Text('1'),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                'assets/Line 19.png'),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Positioned(
                                              top: 30,
                                              child: Image.asset(
                                                'assets/girl.png',
                                                width: 30,
                                              ),
                                            ),
                                            const SizedBox(width: 15),
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'ประเภทถุงบริจาคที่ GREEN ROAD ค่ะ ',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  'ส่วนกระป๋องขายซาเล้งได้ค่ะ',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PageEight()), // เปลี่ยนเป็นหน้าที่ต้องการไป
                                  );
                                },
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PageTwo()),
                                  );
                                },
                                child: Ink(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18, top: 10, bottom: 8),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                    'assets/Ellipse 78.png'),
                                                const Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Matalada',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      Text(
                                                        '2024-02-21 13:06',
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 20),
                                              child: Column(
                                                children: [
                                                  Image.asset(
                                                      'assets/Vectorw.png'),
                                                  const SizedBox(width: 10),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        const Text(
                                            'ใครเคยส่งเรื่องขอติดตั้งตู้ดรอปขวดพลาสติก                             ในคอนโดบ้างคะต้องมีค่าใช้จ่ายไหม หรือว่า           สามารถติดตั้งได้เลย?'),
                                        const SizedBox(height: 10),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 30),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset(
                                                  'assets/Vector.png',
                                                  width: 35),
                                              const SizedBox(width: 1),
                                              const Text('9'),
                                              Image.asset(
                                                  'assets/chat.png',
                                                  width: 30),
                                              const SizedBox(width: 1),
                                              const Text('2'),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 16),
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'assets/Line 19.png'),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Positioned(
                                                top: 30,
                                                child: Image.asset(
                                                  'assets/Ellipse 782.png',
                                                  width: 30,
                                                ),
                                              ),
                                              const SizedBox(width: 15),
                                              const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'คอนโดเราเคยเอามาตั้งค่ะเหมือนทางตู้',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    'ดรอป เขาจะมาสำรวจพื้นที่ก่อนค่ะว่า...',
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PageNine()), // เปลี่ยนเป็นหน้าที่ต้องการไป
                                  );
                                },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, top: 10, bottom: 8),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/Ellipse 78.png'),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Matalada',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                    Text(
                                                      '2024-02-22 13:48',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                    'assets/Vectorw.png'),
                                                const SizedBox(width: 10),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15),
                                        child: Text(
                                            'แชร์วิธีการแยกขยะภายในคอนโดกันหน่อยค่ะ'),
                                      ),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Image.asset(
                                                'assets/Vector.png',
                                                width: 35),
                                            const SizedBox(width: 1),
                                            const Text('18'),
                                            Image.asset(
                                                'assets/chat.png',
                                                width: 30),
                                            const SizedBox(width: 1),
                                            const Text('4'),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                'assets/Line 19.png'),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Positioned(
                                              top: 30,
                                              child: Image.asset(
                                                'assets/girl.png',
                                                width: 30,
                                              ),
                                            ),
                                            const SizedBox(width: 15),
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'บ้านนี้พยายามแยกเศษขยะกับน้ำแกงแล้ว',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  'ทิ้งค่ะตัวน้ำแกงก็เทลงซิงค์แต่ขยะเศษอ...',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20, top: 5,),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PageSeven()), // เปลี่ยนเป็นหน้าที่ต้องการไป
                                  );
                                },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                    width: 1,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18, top: 10, bottom: 8),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/men.png'),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Teewara I.',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                    Text(
                                                      '2024-02-23 14:00',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                    'assets/Vectorw.png'),
                                                const SizedBox(width: 10),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                          'ใครมีวิธีเก็บเศษเเก้วเเตกไปทิ้งบ้างครับ?'),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Image.asset(
                                                'assets/Vector.png',
                                                width: 35),
                                            const SizedBox(width: 1),
                                            const Text('10'),
                                            Image.asset(
                                                'assets/chat.png',
                                                width: 30),
                                            const SizedBox(width: 1),
                                            const Text('1'),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                'assets/Line 19.png'),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Positioned(
                                              top: 30,
                                              child: Image.asset(
                                                'assets/girl.png',
                                                width: 30,
                                              ),
                                            ),
                                            const SizedBox(width: 15),
                                            const Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'ประเภทถุงบริจาคที่ GREEN ROAD ค่ะ ',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  'ส่วนกระป๋องขายซาเล้งได้ค่ะ',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.5,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.all(0),
                          height: 45,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 20),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const page_one_2()),
                                          );
                                        },
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets
                                              .zero, // เพื่อให้ปุ่มไม่มีพื้นที่เว้นว่างรอบขอบ
                                          tapTargetSize: MaterialTapTargetSize
                                              .shrinkWrap, // เพื่อให้ปุ่มมีขนาดเท่ากับข้อความภายใน
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.only(
                                              bottom: 5, left: 3),
                                          child: Text(
                                            'สำหรับฉัน',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              fontFamily: 'MyBinnyFont',
                                              color: Colors.green,
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationThickness: 2,
                                              decorationColor: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            _selectedIndex = 1;
                                          });
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const PageThree()),
                                          );
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 50),
                                          child: Text(
                                            'กระทู้ของฉัน',
                                            style: TextStyle(
                                              color: _selectedIndex == 1
                                                  ? Colors.grey[500]
                                                  : Colors.black,
                                              fontSize: 16,
                                            ),
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
                        Positioned(
                          right: 10,
                          top: 8,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PageThree()),
                              );
                            },
                            child: Positioned(
                              right: 10,
                              top: 8,
                              child: Image.asset(
                                'assets/Vector (1).png',
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), // Comment Container
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class page_one_2 extends StatefulWidget {
  const page_one_2({super.key});

  @override
  _page_one_2State createState() => _page_one_2State();
}

class _page_one_2State extends State<page_one_2> {
  int _selectedIndex = 0;
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
              right: 1, left: 4, top: 5), // กำหนดระยะห่างรอบขอบของรูปภาพ
          child: GestureDetector(
            onTap: () {
              // ทำการเปลี่ยนหน้าที่นี่
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        PageOne()), // แทน YourNextPage ด้วยหน้าที่ต้องการเปลี่ยนไป
              );
            },
            child:
                Image.asset('assets/b-left.png', width: 10, height: 30),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(right: 55), // กำหนดระยะห่างรอบขอบของข้อความ
          child: Text(
            'สำหรับฉัน',
            style: TextStyle(
              fontSize: 25, // กำหนดขนาดของข้อความ
              fontWeight: FontWeight.bold, // กำหนดให้ข้อความเป็นตัวหนา
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 10),
            child: Image.asset('assets/Group 23.png',
                width: 80, height: 80),
          ),
        ],
      ),
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                offset: Offset(10, 15),
                blurRadius: 25,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              ListView(
                padding: const EdgeInsets.only(top: 45),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 5,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageSeven()), // เปลี่ยนเป็นหน้าที่ต้องการไป
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18, top: 10, bottom: 8),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/men.png'),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Teewara I.',
                                              style: TextStyle(color: Colors.black),
                                            ),
                                            Text(
                                              '2024-02-21 13:02',
                                              style: TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/Vectorw.png'),
                                        const SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                  'ใครมีวิธีจัดการขยะเปียกในคอนโดบ้างครับ?                             หรือควรแยกขยะเศษอาหารยังไง แนะนำทีครับ'),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset('assets/Vector.png', width: 35),
                                    const SizedBox(width: 1),
                                    const Text('10'),
                                    Image.asset('assets/chat.png', width: 30),
                                    const SizedBox(width: 1),
                                    const Text('1'),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Column(
                                  children: [
                                    Image.asset('assets/Line 19.png'),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Positioned(
                                      top: 30,
                                      child: Image.asset(
                                        'assets/girl.png',
                                        width: 30,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'ประเภทถุงบริจาคที่ GREEN ROAD ค่ะ ',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        Text(
                                          'ส่วนกระป๋องขายซาเล้งได้ค่ะ',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageEight()), // เปลี่ยนเป็นหน้าที่ต้องการไป
                        );
                      },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 18, top: 10, bottom: 8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/Ellipse 78.png'),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'MyBinnyFont',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          Text(
                                            '2024-02-21 13:06',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/Vectorw.png'),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                                'ใครเคยส่งเรื่องขอติดตั้งตู้ดรอปขวดพลาสติก                             ในคอนโดบ้างคะต้องมีค่าใช้จ่ายไหม หรือว่า           สามารถติดตั้งได้เลย?'),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/images/Vector.png',
                                      width: 35),
                                  const SizedBox(width: 1),
                                  const Text('9'),
                                  Image.asset('assets/images/chat.png',
                                      width: 30),
                                  const SizedBox(width: 1),
                                  const Text('2'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Column(
                                children: [
                                  Image.asset('assets/Line 19.png'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Positioned(
                                    top: 30,
                                    child: Image.asset(
                                      'assets/Ellipse 782.png',
                                      width: 30,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'คอนโดเราเคยเอามาตั้งค่ะเหมือนทางตู้',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        'ดรอป เขาจะมาสำรวจพื้นที่ก่อนค่ะว่า...',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageNine()), // เปลี่ยนเป็นหน้าที่ต้องการไป
                        );
                      },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 18, top: 10, bottom: 8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/Ellipse 78.png'),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'MyBinnyFont',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          Text(
                                            '2024-02-22 13:48',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/Vectorw.png'),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                  'แชร์วิธีการแยกขยะภายในคอนโดกันหน่อยค่ะ'),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/images/Vector.png',
                                      width: 35),
                                  const SizedBox(width: 1),
                                  const Text('18'),
                                  Image.asset('assets/images/chat.png',
                                      width: 30),
                                  const SizedBox(width: 1),
                                  const Text('4'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Column(
                                children: [
                                  Image.asset('assets/images/Line 19.png'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Positioned(
                                    top: 30,
                                    child: Image.asset(
                                      'assets/girl.png',
                                      width: 30,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'บ้านนี้พยายามแยกเศษขยะกับน้ำแกงแล้ว',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        'ทิ้งค่ะตัวน้ำแกงก็เทลงซิงค์แต่ขยะเศษอ...',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 5,),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageSeven()), // เปลี่ยนเป็นหน้าที่ต้องการไป
                        );
                      },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 18, top: 10, bottom: 8),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/men.png'),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Teewara I.',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          Text(
                                            '2024-02-23 14:00',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/Vectorw.png'),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                                'ใครมีวิธีเก็บเศษเเก้วเเตกไปทิ้งบ้างครับ?'),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/Vector.png',
                                      width: 35),
                                  const SizedBox(width: 1),
                                  const Text('10'),
                                  Image.asset('assets/chat.png',
                                      width: 30),
                                  const SizedBox(width: 1),
                                  const Text('1'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Column(
                                children: [
                                  Image.asset('assets/Line 19.png'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Positioned(
                                    top: 30,
                                    child: Image.asset(
                                      'assets/girl.png',
                                      width: 30,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'ประเภทถุงบริจาคที่ GREEN ROAD ค่ะ ',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Text(
                                        'ส่วนกระป๋องขายซาเล้งได้ค่ะ',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.5,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(0),
                height: 45,
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle button tap
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 5, left: 3),
                          child: Text(
                            'สำหรับฉัน',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'MyBinnyFont',
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                              decorationThickness: 2,
                              decorationColor: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PageThree()),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Text(
                            'กระทู้ของฉัน',
                            style: TextStyle(
                              color: _selectedIndex == 1
                                  ? Colors.grey[500]
                                  : Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 8,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageThree()),
                    );
                  },
                  child: Positioned(
                    right: 10,
                    top: 8,
                    child: Image.asset(
                      'assets/Vector (1).png',
                      width: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ), // Comment Container
    );
  }
}
