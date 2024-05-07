import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:binny_project_g3/page_three.dart';
import 'package:binny_project_g3/page_one.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  int _selectedIndex = 0;
  final FocusNode _focusNode = FocusNode();

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
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 50, 50, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PageOne()),
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset('lib/images/b-left.png'),
                        const SizedBox(width: 8),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'กระทู้ถามตอบ',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(35.0, 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset('lib/images/Group 23.png'),
                      ],
                    ),
                  )
                ],
              ),
            ),


            const SizedBox(height: 5), // ปรับค่าระยะห่างด้านบนน้อยลง
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height * 1,
                  width: 600,
                  color: Colors.white,
                  // กำหนดพื้นหลังสีขาว
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 20),
                  margin: const EdgeInsets.all(0), // ปรับค่า padding เพื่อขยับข้อความขึ้น
                  child: Column(
                    children: [
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
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 0;
                                });
                                // Navigate to page one
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PageTwo()),
                                );
                              },
                              child: Text(
                                'สำหรับฉัน',
                                style: TextStyle(
                                  color: _selectedIndex == 0 ? Colors.green : Colors.black,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  decorationColor: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(width: 1), // เพิ่มระยะห่างระหว่างปุ่มและรูป
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 1;
                                });
                                // Navigate to page three
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PageThree()),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end, // จัดให้รูปอยู่ทางขวาสุด
                                children: [
                                  Text(
                                    'กระทู้ของฉัน',
                                    style: TextStyle(
                                      color: _selectedIndex == 1 ? Colors.green : Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  // เพิ่มระยะห่างระหว่างข้อความและรูป
                                  Transform.translate(
                                    offset: const Offset(135.0, 3.0), // ขยับรูปภาพไปทางขวา 20 และลงด้านล่าง 30
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset('lib/images/Vector (1).png'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 370,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 1.5,
                              )
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween, // เพิ่ม property นี้ที่นี่
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset('lib/images/men.png'),
                                            const Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Teewara I.',
                                                  style: TextStyle(color: Colors.black), // เปลี่ยนสีข้อความเป็นสีฟ้า
                                                ),
                                                Text(
                                                  '13:02 | 21 ก.พ. 67 ',
                                                  style: TextStyle(color: Colors.grey), // เปลี่ยนสีข้อความเป็นสีเขียว
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Image.asset('lib/images/Vectorw.png'),
                                            const SizedBox(width: 20, height: 12,), // เพิ่มช่องว่างระหว่างไอคอน
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('สอบถามหน่อยครับส่วนตัวเลี้ยงน้องแมวเลยมีขยะพวกถุงอาหารเม็ดถุงอาหารเปียกถุงทรายแมวและกระป๋องอาหารเปียกขยะพวกนี้สามารถส่งไปที่ไหนได้มั้งครับ ขอบคุณครับ                                                                                                   ปล.ถุงทรายแมวกับอาหารเม็ดต้องทำความสะอาดด้วยไหมครับ'
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset('lib/images/Vector.png', width: 35), // กำหนดขนาดไอคอนเป็น 20
                                      SizedBox(width: 1),
                                      Text('10'),
                                      SizedBox(width: 2),
                                      Image.asset('lib/images/chat.png', width: 30), // กำหนดขนาดรูปภาพเป็น 30
                                      SizedBox(width: 1),
                                      Text('2'),
                                      SizedBox(width: 4),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset('lib/images/Line 19.png')
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('lib/images/girl.png'),
                                        const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '  ประเภทถุงบริจาคที่ GREEN ROAD ค่ะ',
                                              style: TextStyle(
                                                color: Colors.black, // เปลี่ยนสีข้อความเป็นสีฟ้า
                                              ),
                                            ),
                                            Text(
                                              '  ส่วนกระป๋องขายซาเล้งได้ค่ะ',
                                              style: TextStyle(
                                                color: Colors.black, // เปลี่ยนสีข้อความเป็นสีฟ้า
                                              ),
                                            ),
                                            Text(
                                              '  reply',
                                              style: TextStyle(
                                                color: Colors.green, // เปลี่ยนสีข้อความเป็นสีฟ้า
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('lib/images/Ellipse 782.png'),
                                        const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '  #ทีมทำลายให้หายไปค่ะ กระป๋องรวมๆขายได้ ',
                                              style: TextStyle(
                                                color: Colors.black, // เปลี่ยนสีข้อความเป็นสีฟ้า
                                              ),
                                            ),
                                            Text(
                                              '  ถ้าไม่ขายก็เก็บรวมๆ5-6ป๋องใส่ถุงวางข้างถังขยะ',
                                              style: TextStyle(
                                                color: Colors.black, // เปลี่ยนสีข้อความเป็นสีฟ้า
                                              ),
                                            ),
                                            Text(
                                              '  พี่ซาเล้งมาช่วยเก็บไปขายค่ะ',
                                              style: TextStyle(
                                                color: Colors.black, // เปลี่ยนสีข้อความเป็นสีฟ้า
                                              ),
                                            ),
                                            Text(
                                              '  reply',
                                              style: TextStyle(
                                                color: Colors.green, // เปลี่ยนสีข้อความเป็นสีฟ้า
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                            ),

                          ),
                        ),
                      )
                    ],
                  ),

                ),
              ),
            ),
            Center(
              child: Container(
                width: 420, // กำหนดความกว้างของกรอบ
                height: 100, // กำหนดความสูงของกรอบ
                decoration: const BoxDecoration(
                  color: Colors.green, // กำหนดสีของเส้นขอบ
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0), // Set internal padding for the text field
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 50, 1, 1), // กำหนดระยะขอบของ Padding เพื่อขยับตำแหน่ง
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset('lib/images/Vector (1).png'),
                          ],
                        ),
                      ),

                      SizedBox(width: 8), // Add space between the text field and the image
                      Align(
                        alignment: const Alignment(5.0, 0.5), // Adjust alignment as needed
                        child: Image.asset('lib/images/Ellipse 781.png'),
                      ),
                      Expanded(
                        child: TextField(
                          focusNode: _focusNode,
                          decoration: InputDecoration(
                            hintText: '  แสดงความคิดเห็นของคุณ', // Sample text in the text field
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0), // Set the shape of the text field border
                            ),
                            filled: true,
                            fillColor: Colors.white, // Set the background color of the text field
                          ),
                        ),
                      ),
                      SizedBox(width: 5), // Add space between the text field and the image
                      Align(
                        alignment: const Alignment(10.0, 0.2), // Adjust alignment as needed
                        child: Image.asset('lib/images/Frame 334.png'),
                      ),// Replace 'your_image.png' with the actual image path
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
