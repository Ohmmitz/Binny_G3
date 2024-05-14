import 'package:flutter/material.dart';
import 'package:binny_project_g3/page_one.dart';
import 'package:binny_project_g3/page_three.dart';

class PageThreeOne extends StatefulWidget {
  final Map<String, dynamic> data;

  PageThreeOne({required this.data});

  @override
  _PageThreeOneState createState() => _PageThreeOneState();
}

class _PageThreeOneState extends State<PageThreeOne> {
  int _selectedIndex = 0;
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    String message = widget.data['message'];
    List<String> imageUrls = widget.data['imageUrls'];
    List<String> names = widget.data['names'];

    return GestureDetector(
        onTap: () {
          if (!_focusNode.hasPrimaryFocus) {
            _focusNode.unfocus();
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 30),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageOne()), // เปลี่ยนเป็นหน้าที่ต้องการไป
                        );
                      },
                      child: Image.asset('assets/images/b-left.png'),
                    ),
                    const SizedBox(width: 1),
                    Image.asset('assets/images/b1.png'),
                    const SizedBox(width: 1),
                    Image.asset('assets/images/b2.png'),
                    const SizedBox(width: 190),
                    Spacer(),
                    Image.asset('assets/images/Group 23.png'),
                    const SizedBox(width: 15),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 190, left: 15, top: 1),
                  child: Text(
                    'กระทู้ถามตอบ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.green,
                      fontFamily: 'YourFontFamily',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 190, left: 15),
                  child: Text(
                    '#ประเด็นคำถามยอดฮิตวันนี้',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'YourFontFamily',
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: MediaQuery.of(context).size.height * 1,
                      color: Colors.white,
                      padding: EdgeInsets.fromLTRB(8, 2, 8, 20),
                      margin: EdgeInsets.all(0),
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
                                      MaterialPageRoute(builder: (context) => page_one_2()),
                                    );
                                  },
                                  child: Text(
                                    'สำหรับฉัน',
                                    style: TextStyle(
                                      color: _selectedIndex == 0 ? Colors.black : Colors.black,
                                      decorationColor: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 1),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _selectedIndex = 1;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      'กระทู้ของฉัน',
                                      style: TextStyle(
                                        color: _selectedIndex == 1 ? Colors.black : Colors.green,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 2,
                                        decorationColor: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(135.0, 10.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => PageThree()),
                                      );
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset('assets/images/Vector (1).png'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              width: 400,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                    width: 1.5,
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // แสดงรูปภาพและชื่อจาก List ของ URLs ด้วย ListView.builder
                                    ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: imageUrls.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return Row(
                                          crossAxisAlignment: CrossAxisAlignment.start, // ให้รูปภาพชิดซ้าย
                                          children: [
                                            Image.asset(
                                              imageUrls[index],
                                              width: 40, // กำหนดความกว้างของรูปภาพ
                                              height: 40, // กำหนดความสูงของรูปภาพ
                                            ),
                                            SizedBox(width: 10), // เพิ่มระยะห่างระหว่างรูปภาพและข้อความ name
                                            // แสดงข้อความ name
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 45),
                                                  child: Text(
                                                    names.isNotEmpty ? names.first : "ไม่มีชื่อ",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold, // กำหนดให้ตัวอักษรหนา
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 1),
                                                  child: Text(
                                                    "${DateTime.now().toString().substring(0, 16)}",
                                                    style: TextStyle(fontSize: 14, color: Colors.grey),
                                                    // กำหนดขนาดตัวอักษรของข้อความ message
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 150),
                                              child: Image.asset(
                                                'assets/images/Vectore.png',
                                                width: 20, // กำหนดความกว้างของรูปภาพ
                                                height: 20, // กำหนดความสูงของรูปภาพ
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),

                                    // แสดงข้อความ
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 50),
                                      child: Text(
                                        message,
                                        style: TextStyle(fontSize: 16), // กำหนดขนาดตัวอักษรของข้อความ message
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}