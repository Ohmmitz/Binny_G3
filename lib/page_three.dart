import 'package:flutter/material.dart';
import 'package:binny_project_g3/page_two.dart'; // Import page_two.dart
import 'page_three.dart'; // Import page_three.dart หรือไฟล์ที่เกี่ยวข้อง
import 'package:binny_project_g3/page_one.dart'; // เพิ่ม Pageone

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
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
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 30),
              Row(
                children: [
                  Image.asset('lib/images/b-left.png'),
                  const SizedBox(width: 1),
                  Image.asset('lib/images/b1.png'),
                  const SizedBox(width: 1),
                  Image.asset('lib/images/b2.png'),
                  const SizedBox(width: 190),
                  Spacer(),
                  Image.asset('lib/images/Group 23.png'),
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PageOne()), //เปลี่ยนเป็น pageone
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'สำหรับฉัน',
                                    style: TextStyle(
                                      color: _selectedIndex == 0
                                          ? Colors.black
                                          : Colors.green,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 1),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    _selectedIndex = 1;
                                  });
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PageThree()),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Text(
                                    'กระทู้ของฉัน',
                                    style: TextStyle(
                                      color: _selectedIndex == 1
                                          ? Colors.grey[500]
                                          : Colors.green,
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 2,
                                      decorationColor: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              Transform.translate(
                                offset: const Offset(155.0,
                                    10.0), // ขยับรูปภาพไปทางขวา 20 และลงด้านล่าง 30
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
                        const SizedBox(
                            height:
                                200), // Add space between button row and next content
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'คุณยังไม่เคยตั้งกระทู้..',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[300],
                              ),
                            ),
                            SizedBox(height: 10), // Add space between text
                            Text(
                              'มาเริ่มตั้งกระทู้กันเลย!',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(
                                height:
                                    10), // Add space between text and button
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.all(8),
                              width: 250,
                              child: Center(
                                child: Text(
                                  'เขียนกระทู้คำถามของคุณ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
