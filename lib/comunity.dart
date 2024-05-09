import 'package:flutter/material.dart';


class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/sorn.png',
                    height: 40,
                  ),
                  SizedBox(width: 5), // เพิ่มระยะห่างระหว่างรูป sorn กับ group
                  Image.asset(
                    'assets/group.png',
                    height: 30,
                  ),
                ],
              ),
              Image.asset(
                'assets/heart.png',
                height: 50,
              ),
            ],
          ),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'รักษ์โลก',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Text(
                'คอมมูนิตี้',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30), // ระยะห่างระหว่างข้อความ
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'สำหรับฉัน ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(width: 15), // ระยะห่างระหว่างข้อความ
                    ),
                    TextSpan(
                      text: 'ยอดฮิต',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // ระยะห่างระหว่างข้อความ
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/fa.png',
                      height: 150,
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    Image.asset(
                      'assets/fb.png',
                      height: 150,
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    Image.asset(
                      'assets/fc.png',
                      height: 150,
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    Image.asset(
                      'assets/fd.png',
                      height: 150,
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    Image.asset(
                      'assets/faa.png',
                      height: 150,
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    Image.asset(
                      'assets/fbb.png',
                      height: 150,
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    Image.asset(
                      'assets/fcc.png',
                      height: 150,
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    Image.asset(
                      'assets/fdd.png',
                      height: 150,
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                  ],
                ),
              ),
              SizedBox(height: 10), // ระยะห่างระหว่างข้อความกับภาพ
              Row(
                children: [
                  SizedBox(width: 10), // ระยะห่างระหว่างข้อความกับขอบภาพ
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'กิจกรรมน่าสนใจ',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 120),
                          Text(
                            'ดูทั้งหมด',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10), // ระยะห่างระหว่างข้อความกับภาพ
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Image.asset(
                      'assets/fra.png',
                      height: 250,
                    ),
                    SizedBox(height: 10), // ระยะห่างระหว่างรูป
                    Image.asset(
                      'assets/frb.png',
                      height: 250,
                    ),
                    SizedBox(height: 10), // ระยะห่างระหว่างรูป
                    Image.asset(
                      'assets/frc.png',
                      height: 250,
                    ),
                    SizedBox(height: 10), // ระยะห่างระหว่างรูป
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
