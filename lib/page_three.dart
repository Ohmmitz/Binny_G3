import 'package:flutter/material.dart';
import 'package:binny_project_g3/page_one.dart';
import 'package:binny_project_g3/page_two.dart'; // Import page_two.dart
import 'page_three.dart'; // Import page_three.dart หรือไฟล์ที่เกี่ยวข้อง
import 'package:binny_project_g3/page_three_one.dart';
// เพิ่ม Pageone

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  int _selectedIndex = 0;
  FocusNode _focusNode = FocusNode();
  TextEditingController _textController = TextEditingController();
  late final String message;

  List<String> imageUrls = [
    'assets/1women.png',
    // เพิ่มรูปภาพอื่น ๆ ตามต้องการ
  ];
  List<String> names = [
    'Matalada',
    // เพิ่มชื่ออื่น ๆ ตามต้องการ
  ];


  @override
  Widget build(BuildContext context) {
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
                    child: Image.asset('assets/b-left.png'),
                  ),
                  const SizedBox(width: 1),
                  Image.asset('assets/b1.png'),
                  const SizedBox(width: 1),
                  Image.asset('assets/b2.png'),
                  const SizedBox(width: 190),
                  Spacer(),
                  Image.asset('assets/Group 23.png'),
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
                    fontFamily: 'MyBinnyFont',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 190, left: 15),
                child: Text(
                  '#ประเด็นคำถามยอดฮิตวันนี้',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'MyBinnyFont',
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
                                    MaterialPageRoute(builder: (context) => page_one_2()), //เปลี่ยนเป็น pageone
                                  );
                                },
                                child: Text(
                                  'สำหรับฉัน',
                                  style: TextStyle(
                                    color: _selectedIndex == 0 ? Colors.black : Colors.green,
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PageThree()),
                                  );
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
                                offset: Offset(135.0, 10.0), // ขยับรูปภาพไปทางขวา 20 และลงด้านล่าง 30
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset('assets/Vector (1).png'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 200), // Add space between button row and next content
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10), // Add space between text
                            Text(
                              'มาเริ่มตั้งกระทู้กันเลย!',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(height: 10), // Add space between text and button
                            GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("เขียนกระทู้คำถามของคุณ"),
                                      content: SingleChildScrollView(
                                        child: TextField(
                                          controller: _textController,
                                          decoration: InputDecoration(hintText: "พิมพ์ข้อความที่นี่..."),
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            // สร้างข้อมูลที่ต้องการส่งไปยังหน้าต่อไป
                                            Map<String, dynamic> data = {
                                              'imageUrls': imageUrls,
                                              'names': names,
                                              'message': _textController.text,
                                            };

                                            // เปิดหน้าต่อไปและส่งข้อมูล
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => PageThreeOne(data: data),
                                              ),
                                            );
                                          },
                                          child: Text("ตกลง"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: Container(
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