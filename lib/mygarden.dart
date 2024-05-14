import 'package:binny_project_g3/homescreen.dart';
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
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
        child: Container(
          color: Colors.blue,
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Your positioned images here
              Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/colorr.png',
                  height: 400,
                  width: 1110,
                ),
              ),
              Positioned(
                bottom: 670, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 130, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/binny.png',
                  height: 150, // ปรับขนาดรูปภาพตามต้องการ
                  width: 150, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 540, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/re.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 500, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/co.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 470, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/roei.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 240, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/tree.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 90, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/pum.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 30, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/kod.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 0, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/twen.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: -80, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/le.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 400, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: -120, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mek.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 450, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 90, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mekk.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 340, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 160, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mekk.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ThirdPage()),
          );
        },
        child: Container(
          color: Colors.blue,
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Your positioned images here
              Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/colorr.png',
                  height: 400,
                  width: 1110,
                ),
              ),
              Positioned(
                bottom: 670, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 130, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/binny.png',
                  height: 150, // ปรับขนาดรูปภาพตามต้องการ
                  width: 150, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 540, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/re.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 500, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/co.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 470, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/roei.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 240, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/treetwo.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 90, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/pum.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 30, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/kod.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 0, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/twen.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: -80, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/le.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 400, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: -120, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mek.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 450, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 90, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mekk.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 340, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 160, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mekk.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FourPage()),
          );
        },
        child: Container(
          color: Colors.blue,
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Your positioned images here
              Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/colorr.png',
                  height: 400,
                  width: 1110,
                ),
              ),
              Positioned(
                bottom: 670, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 130, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/binny.png',
                  height: 150, // ปรับขนาดรูปภาพตามต้องการ
                  width: 150, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 540, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/re.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 500, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/co.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 470, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/roei.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 240, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/treethre.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 90, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/pum.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 30, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/kod.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 0, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/twen.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: -80, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/le.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 400, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: -120, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mek.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 450, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 90, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mekk.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 340, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 160, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mekk.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class FourPage extends StatelessWidget {
  const FourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FivePage()),
          );
        },
        child: Container(
          color: Colors.blue,
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Your positioned images here
              Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/colorr.png',
                  height: 400,
                  width: 1110,
                ),
              ),
              Positioned(
                bottom: 670, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 130, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/binny.png',
                  height: 150, // ปรับขนาดรูปภาพตามต้องการ
                  width: 150, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 540, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/re.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 500, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/co.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 470, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/roei.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 240, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/treefour.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 90, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/pum.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 30, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/kod.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 0, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/twen.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: -80, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/le.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 400, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: -120, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mek.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 450, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 90, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mekk.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 340, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 160, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mekk.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class FivePage extends StatelessWidget {
  const FivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homescreen()),
          );
        },
        child: Container(
          color: Colors.blue,
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Your positioned images here
              Positioned(
                bottom: 0,
                child: Image.asset(
                  'assets/colorr.png',
                  height: 400,
                  width: 1110,
                ),
              ),
              Positioned(
                bottom: 670, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 130, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/binny.png',
                  height: 150, // ปรับขนาดรูปภาพตามต้องการ
                  width: 150, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 540, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/re.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 500, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/co.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 470, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/roei.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 240, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/treefive.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 90, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/pum.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 30, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/kod.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 0, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/twen.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: -80, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 0, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/le.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 400, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: -120, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mek.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 450, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 90, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mekk.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
              Positioned(
                bottom: 340, // ระยะห่างระหว่างรูปภาพที่ต้องการปรับได้ตามต้องการ
                left: 160, // ระยะห่างจากด้านซ้ายของ Container
                child: Image.asset(
                  'assets/mekk.png',
                  height: 400, // ปรับขนาดรูปภาพตามต้องการ
                  width: 400, // ปรับขนาดรูปภาพตามต้องการ
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}