import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import package for launching URLs

void main() {
  runApp(commu());
}

class commu extends StatelessWidget {
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
                  SizedBox(width: 2), // เพิ่มระยะห่างระหว่างรูป sorn กับ group
                  Image.asset(
                    'assets/group.png',
                    height: 30,
                  ),
                ],
              ),
              Image.asset(
                'assets/bx_heart.png',
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
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://www.kmutt.ac.th/about_sustainability/%E0%B8%94%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%AA%E0%B8%B4%E0%B9%88%E0%B8%87%E0%B8%9B%E0%B8%8F%E0%B8%B4%E0%B8%81%E0%B8%B9%E0%B8%A5/');
                      },
                      child: Image.asset(
                        'assets/fa.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://projects.dmcr.go.th/miniprojects/198/home');
                      },
                      child: Image.asset(
                        'assets/fb.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://www.apthai.com/th/blog/know-how/knowhow-how-to-dispose-food-waste-at-home');
                      },
                      child: Image.asset(
                        'assets/fc.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 2), // ระยะห่างระหว่างรูป
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://www.onep.go.th/e-waste-%E0%B8%82%E0%B8%A2%E0%B8%B0%E0%B9%83%E0%B8%81%E0%B8%A5%E0%B9%89%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A3%E0%B8%AD%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%81%E0%B8%81%E0%B9%89/');
                      },
                      child: Image.asset(
                        'assets/fd.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 2), // ระยะห่างระหว่างรูป
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://www.kmutt.ac.th/about_sustainability/%E0%B8%94%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%AA%E0%B8%B4%E0%B9%88%E0%B8%87%E0%B8%9B%E0%B8%8F%E0%B8%B4%E0%B8%81%E0%B8%B9%E0%B8%A5/');
                      },
                      child: Image.asset(
                        'assets/faa.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://projects.dmcr.go.th/miniprojects/198/home');
                      },
                      child: Image.asset(
                        'assets/fbb.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 10), // ระยะห่างระหว่างรูป
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://www.apthai.com/th/blog/know-how/knowhow-how-to-dispose-food-waste-at-home');
                      },
                      child: Image.asset(
                        'assets/fcc.png',
                        height: 150,
                      ),
                    ),
                    SizedBox(width: 2), // ระยะห่างระหว่างรูป
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://www.onep.go.th/e-waste-%E0%B8%82%E0%B8%A2%E0%B8%B0%E0%B9%83%E0%B8%81%E0%B8%A5%E0%B9%89%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A3%E0%B8%AD%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%81%E0%B8%81%E0%B9%89/');
                      },
                      child: Image.asset(
                        'assets/fdd.png',
                        height: 150,
                      ),
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
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://www.thaikoonchain.com/sustainable-csr/136');
                      },
                      child: Image.asset(
                        'assets/fra.png',
                        height: 250,
                      ),
                    ),
                    SizedBox(height: 10), // ระยะห่างระหว่างรูป
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://adaymagazine.com/save-the-planet-associate/');
                      },
                      child: Image.asset(
                        'assets/frb.png',
                        height: 250,
                      ),
                    ),
                    SizedBox(height: 10), // ระยะห่างระหว่างรูป
                    GestureDetector(
                      onTap: () {
                        _launchURL('https://m.facebook.com/agro.ku/photos/a.184983824858582/5868736853149889/?type=3');
                      },
                      child: Image.asset(
                        'assets/frc.png',
                        height: 250,
                      ),
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

  // Function to launch URLs
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
