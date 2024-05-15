import 'package:comment_box/comment/comment.dart';
import 'package:flutter/foundation.dart';
import 'package:binny_project_g3/page_one.dart';
import 'package:flutter/material.dart';
import 'package:binny_project_g3/page_three.dart';
import 'package:binny_project_g3/page_two.dart';

class PageSeven extends StatefulWidget {
  const PageSeven({super.key});

  @override
  _PageSevenState createState() => _PageSevenState();
}

class _PageSevenState extends State<PageSeven> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Ammy G.',
      'pic': 'assets/girl1.png',
      'message': 'บ้านเราพยายามแยกเศษขยะกับน้ำแกงแล้วทิ้งค่ะตัวน้ำแกงก็เทลง ซิงค์แต่ขยะเศษอาหารจะทิ้งลงถังที่ย่อยสลายได้ค่ะ ไม่แน่ใจว่ามันถูกไหมแต่ใช้วิธีนี้มาตลอด',
    },
  ];

  int _selectedIndex = 0;

  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                  // Display the image in large form.
                  if (kDebugMode) {
                    print("Comment Clicked");
                  }
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
            ),
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(right: 1, left: 4, top: 5), // กำหนดระยะห่างรอบขอบของรูปภาพ
          child: GestureDetector(
            onTap: () {
              // ทำการเปลี่ยนหน้าที่นี่
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageOne()), // แทน YourNextPage ด้วยหน้าที่ต้องการเปลี่ยนไป
              );
            },
            child: Image.asset('assets/b-left.png', width: 10, height: 30),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(right: 55), // กำหนดระยะห่างรอบขอบของข้อความ
          child: Text(
            'กระทู้ถามตอบ',
            style: TextStyle(
              fontSize: 25, // กำหนดขนาดของข้อความ
              fontWeight: FontWeight.bold, // กำหนดให้ข้อความเป็นตัวหนา
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 10),
            child: Image.asset('assets/Group 23.png', width: 80, height: 80),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 0.5,
                            blurRadius: 5,
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
                                const SizedBox(width: 150),
                                // เพิ่มระยะห่างระหว่างข้อความและรูป
                                Positioned(
                                  right: 0,
                                  top: 8,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => PageThree()),
                                      );
                                    },
                                    child: Image.asset(
                                      'assets/Vector (1).png',
                                      width: 30,
                                    ),
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
                        width: 600,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/Ellipse 78(1).png',
                                            width: 55,
                                            height: 55,
                                          ),
                                          SizedBox(width: 10), // กำหนดระยะห่างระหว่างรูปภาพและข้อความ
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Teewara I.',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                '2024-02-21 13:02',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 140),
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Image.asset(
                                                      'assets/Vector.png',
                                                      width: 20,
                                                      height: 20,
                                                    ),
                                                    // กำหนดระยะห่างระหว่างไอคอน
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text('ใครมีวิธีจัดการขยะเปียกในคอนโดบ้างครับ ? หรือควรแยกขยะเศษอาหารยังไง แนะนำทีครับ 😥'
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset('assets/Vector.png', width: 35), // กำหนดขนาดไอคอนเป็น 20
                                    SizedBox(width: 1),
                                    Text('10'),
                                    SizedBox(width: 2),
                                    Image.asset('assets/chat.png', width: 30), // กำหนดขนาดรูปภาพเป็น 30
                                    SizedBox(width: 1),
                                    Text('1'),
                                    SizedBox(width: 4),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Column(
                                  children: [
                                    Image.asset(
                                        'assets/Line 19.png'
                                    ),
                                  ],
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
          Expanded(
            flex: 1, // Adjusted flex value
            child: Column(
              children: [
                Expanded(
                  child: CommentBox(
                    userImage: CommentBox.commentImageParser(
                        imageURLorPath: "assets/Ellipse 78.png"),
                    labelText: 'เขียนความคิดเห็น...',
                    errorText: 'ความคิดเห็นต้องไม่ว่างเปล่า',
                    withBorder: false,
                    sendButtonMethod: () {
                      if (formKey.currentState!.validate()) {
                        if (kDebugMode) {
                          print(commentController.text);
                        }
                        setState(() {
                          var value = {
                            'name': 'Matalada',
                            'pic':
                            'assets/Ellipse 78.png',
                            'message': commentController.text,
                          };
                          filedata.insert(0, value);
                        });
                        commentController.clear();
                        FocusScope.of(context).unfocus();
                      } else {
                        if (kDebugMode) {
                          print("ไม่ผ่านการตรวจสอบ");
                        }
                      }
                    },
                    formKey: formKey,
                    commentController: commentController,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    sendWidget: const Icon(Icons.send_sharp, size: 30, color: Colors.white),
                    child: commentChild(filedata),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}