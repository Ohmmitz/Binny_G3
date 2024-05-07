import 'package:flutter/material.dart';

class Garden extends StatefulWidget {
  const Garden({Key? key}) : super(key: key);

  @override
  _GardenState createState() => _GardenState();
}

class _GardenState extends State<Garden> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF039BE5), Color(0xFF84FFFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/binny.png',
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.3,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/colorr.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.5, // ปรับตำแหน่ง bottom ตามความต้องการ
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/co.png',
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.5,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.3, // ปรับตำแหน่ง bottom ตามความต้องการ
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/roei.png',
                  height: MediaQuery.of(context).size.height * 1.08,
                  width: MediaQuery.of(context).size.width * 0.2,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.65, // ปรับตำแหน่ง bottom ตามความต้องการ
              left: MediaQuery.of(context).size.width * -0.05, // ปรับตำแหน่ง left ตามความต้องการ
              right: MediaQuery.of(context).size.width * 0.7, // ปรับตำแหน่ง right ตามความต้องการ
              child: Image.asset(
                'assets/mek.png',
                fit: BoxFit.contain,
                ),
              ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.6, // ปรับตำแหน่ง bottom ตามความต้องการ
              left: MediaQuery.of(context).size.width * 0.7     , // ปรับตำแหน่ง left ตามความต้องการ
              right: MediaQuery.of(context).size.width * -0.08,  
               // ปรับตำแหน่ง right ตามความต้องการ
              child: Image.asset(
                'assets/mekk.png',
                fit: BoxFit.contain,
                ),
              ),  
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.75, // ปรับตำแหน่ง bottom ตามความต้องการ
              left: MediaQuery.of(context).size.width * 0.55     , // ปรับตำแหน่ง left ตามความต้องการ
              right: MediaQuery.of(context).size.width * 0.15,  
               // ปรับตำแหน่ง right ตามความต้องการ
              child: Image.asset(
                'assets/mekk.png',
                fit: BoxFit.contain,
                ),
              ),  
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.3, // ปรับตำแหน่ง bottom ตามความต้องการ
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/tree.png',
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 1,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.12, // ปรับตำแหน่ง bottom ตามความต้องการ
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/pum.png',
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.2,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.2, // ปรับตำแหน่ง bottom ตามความต้องการ
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/kod.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.15, // ปรับตำแหน่ง bottom ตามความต้องการ
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/twen.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.15,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.08, // ปรับตำแหน่ง bottom ตามความต้องการ
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/le.png',
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}