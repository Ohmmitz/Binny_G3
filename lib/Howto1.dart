import 'dart:async';
import 'dart:math';
import 'package:binny_project_g3/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:binny_project_g3/product1.dart';
import 'package:binny_project_g3/product2.dart';
import 'package:binny_project_g3/product3.dart';
import 'package:binny_project_g3/product4.dart';


class Homepoint extends StatefulWidget {
  @override
  _HomepointState createState() => _HomepointState();
}

class _HomepointState extends State<Homepoint> {

  Timer? timer;
  List<Map<String, dynamic>> people = [];
  

  @override
  void initState() {
    super.initState();
    // เริ่มตัวจับเวลาเมื่อ initState ถูกเรียก
    startTimer();
  }

  void startTimer() {
    // ตั้งเวลาที่ต้องการให้จัดอันดับใหม่ โดยให้เป็น 10 วินาที
    const duration = Duration(seconds: 3);
    timer = Timer.periodic(duration, (timer) {
      // สุ่มคะแนนใหม่ทั้งหมดและเรียงลำดับคะแนนใหม่
      setState(() {
        people = _generateRandomScores();
        people.sort((a, b) => b['score'].compareTo(a['score']));
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    // ยกเลิกตัวจับเวลาเมื่อ State ถูกทำลาย
    timer?.cancel();
  }

  List<Map<String, dynamic>> _generateRandomScores() {
    // สุ่มคะแนนใหม่สำหรับแต่ละคน
    var random = Random();
    var newPeople = <Map<String, dynamic>>[];
    for (var name in ['Nonnie', 'Sandy San', 'Teewara I.', 'สมชาย', 'สมหญิง']) {
      newPeople.add({
        'name': name,
        'score': random.nextInt(400) + 600, // สุ่มคะแนนในช่วง 1 - 1000
      });
    }
    return newPeople;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
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
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  // Handle your action here
                },
                child: Image.asset(
                  'assets/binnyy.png',
                  width: 70,
                  height: 21.3,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 160.0, right: 10),
              child: GestureDetector(
                onTap: () {
                  // Handle your action here
                },
                child: Image.asset(
                  'assets/hard.png',
                  width: 68,
                  height: 49.0,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/howto.png',
                  width: 196,
                  height: 53,
                ),
                SizedBox(height: 5),
                Stack(
                  children: [
                    Image.asset(
                      'assets/paper1.png',
                      width: 309,
                      height: 439,
                    ),
                    Image.asset(
                      'assets/paper2.png',
                      width: 309,
                      height: 439,
                    ),
                    Image.asset(
                      'assets/testbintreebg.png',
                      width: 309,
                      height: 439,
                    ),
                    Positioned(
                      left: 188,
                      top: 80,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => product1()),
                          );
                        },
                        child: Image.asset(
                          'assets/productt1.png',
                          width: 95,
                          height: 95,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 135,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => product2()),
                          );
                        },
                        child: Image.asset(
                          'assets/productt2.png',
                          width: 95,
                          height: 95,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 180,
                      top: 205,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => product3()),
                          );
                        },
                        child: Image.asset(
                          'assets/productt3.png',
                          width: 95,
                          height: 95,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      top: 275,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => product4()),
                          );
                        },
                        child: Image.asset(
                          'assets/productt4.png',
                          width: 95,
                          height: 95,
                        ),
                      ),
                    ),
                    // Other Positioned widgets...
                    Positioned(
                      left: 200,
                      bottom: 327,
                      child: Image.asset(
                        'assets/point.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Positioned(
                      left: 35,
                      bottom: 265,
                      child: Image.asset(
                        'assets/point.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Positioned(
                      left: 100,
                      bottom: 126,
                      child: Image.asset(
                        'assets/point.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Positioned(
                      left: 160,
                      bottom: 195,
                      child: Image.asset(
                        'assets/point.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                    // Other Positioned widgets...
                  ],
                ),
                SizedBox(height: 0),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: 370,
                    height: 550,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/number.png'),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 100),
                    child: Column(
                      children: people.map((person) {
                        return ListTile(
                          title: Row(
                            children: [
                              SizedBox(height: 70),
                              SizedBox(
                                width: 100,
                                child: Text(
                                  '${person['name']}',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              SizedBox(width: 118),
                              Text(
                                '${person['score']}',
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          leading: SizedBox(
                            width: 60,
                            child: Image.asset(
                              'assets/${person['name']}.png',
                              width: 170,
                              height: 170,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
