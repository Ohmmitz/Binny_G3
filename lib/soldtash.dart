import 'package:binny_project_g3/homescreen.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_utils/app_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'SearchPage.dart';

class Soldtash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFF6F9FD),
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 63, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(14, 0, 13, 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                            child: Container(
                              child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Homescreen()),
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 9, 0, 9),
                            width: 71,
                            height: 23,
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/binnyy.png',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 71,
                                height: 23,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: SizedBox(
                        width: 63,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/favorites.png',
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 30,
                                  height: 31,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 3.5, 0, 3.5),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/search.png',
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 25,
                                  height: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 0, 0, 19),
                child: SizedBox(
                  width: 1066,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/rectangle_198.png',
                              ),
                            ),
                          ),
                          child: Transform.translate(
                            offset: Offset(-35, -8), // ขยับตำแหน่งไปทางซ้าย และลงมา -8 พิกเซล
                            child: Transform.scale(
                              scale: 0.8, // ลดขนาดตัวอักษรเป็น 80%
                              child: Container(
                                width: 348,
                                height: 141,
                                child: Positioned(
                                  left: 5, // ขยับตำแหน่งไปทางซ้ายเล็กน้อย
                                  bottom: 10, // ขยับตำแหน่งลงมาเล็กน้อย
                                  child: SizedBox(
                                    width: 157.7,
                                    height: 126,
                                    child: Transform.translate(
                                      offset: Offset(20, 0), // ขยับตัวอักษรไปข้างหน้า 20 พิกเซล
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 49),
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 18),
                                              child: Stack(
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Text(
                                                    'ขยะกำพร้าไปไหนดี?',
                                                    style: GoogleFonts.getFont(
                                                      'IBM Plex Sans Thai',
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 22, // ลดขนาดตัวอักษร
                                                      letterSpacing: -0.4,
                                                      color: Color(0xFFFFFFFF),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    bottom: -20, // ถอยหลังตำแหน่งลง 20 พิกเซล
                                                    child: SizedBox(
                                                      height: 26,
                                                      child: Text(
                                                        'N15 Technology',
                                                        style: GoogleFonts.getFont(
                                                          'IBM Plex Sans Thai',
                                                          fontWeight: FontWeight.w300,
                                                          fontSize: 18, // ลดขนาดตัวอักษร
                                                          letterSpacing: -0.4,
                                                          color: Color(0xFFFFFFFF),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 17), // เพิ่มระยะห่าง
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Transform.translate(
                                              offset: Offset(0, 20), // ขยับตำแหน่งลงมา 10 พิกเซล
                                              child: Text(
                                                '#ประเภทขยะกำพร้า',
                                                style: GoogleFonts.getFont(
                                                  'IBM Plex Sans Thai',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 18, // ลดขนาดตัวอักษร
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/rectangle_1982.png',
                              ),
                            ),
                          ),
                          child: Container(
                            width: 348,
                            height: 141,
                            child: Positioned(
                              left: 17,
                              top: 9,
                              child: SizedBox(
                                height: 66,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 10,
                                      left: 20, // ขยับมาทางขวา 20 พิกเซล
                                      child: Text(
                                        'เสื้อตัวนี้ไม่ใส่แล้วไว้ไหนดี?',
                                        style: GoogleFonts.getFont(
                                          'IBM Plex Sans Thai',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18,
                                          letterSpacing: -0.4,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 85, // ขยับขึ้นมา 85 พิกเซล
                                      left: 20, // ขยับมาทางขวา 20 พิกเซล
                                      child: SizedBox(
                                        height: 26,
                                        child: Text(
                                          'สถานสงเคราะห์ต้องการนะ',
                                          style: GoogleFonts.getFont(
                                            'IBM Plex Sans Thai',
                                            fontWeight: FontWeight.w300,
                                            fontSize: 14,
                                            letterSpacing: -0.4,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),


                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/rectangle_1981.png',
                              ),
                            ),
                          ),
                          child: Container(
                            width: 348,
                            height: 141,
                            child: Positioned(
                              left: 17,
                              top: 9,
                              child: SizedBox(
                                height: 51,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 18),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        top: 10,
                                        left: 20,
                                        child: Text(
                                          'เครื่องสำอางค์ใช้ไม่ทัน',
                                          style: GoogleFonts.getFont(
                                            'IBM Plex Sans Thai',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            letterSpacing: -0.4,
                                            color: Color(0xFFFFFFFF),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 68, // ขยับขึ้นมา 65 พิกเซล
                                        left: 20, // ขยับมาทางขวา 20 พิกเซล
                                        child: SizedBox(
                                          height: 26,
                                          child: Text(
                                            'มา “แบ่งบุญสวย” กันไหม',
                                            style: GoogleFonts.getFont(
                                              'IBM Plex Sans Thai',
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14,
                                              letterSpacing: -0.4,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFE2E2E2)),
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 11, 0, 58),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(21, 0, 21, 4),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'องค์กรรับบริจาค',
                            style: GoogleFonts.getFont(
                              'IBM Plex Sans Thai',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: -0.4,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(22, 2, 22, 0),
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        //เปิดลิงก์เมื่อรูปถูกคลิ๊ก
                                        launch('https://n15technology.com/');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Color(0xFFEAEAEA)),
                                                borderRadius: BorderRadius.circular(100),
                                                color: Color(0xFFFFFFFF),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    'assets/rectangle_602.png',
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                width: 131,
                                                height: 130,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(9.2, 0, 9.2, 0),
                                              child: Text(
                                                'N15 Technology',
                                                style: GoogleFonts.getFont(
                                                  'IBM Plex Sans Thai',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Add more widgets inside this Column if needed
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        //เปิดลิงก์เมื่อรูปถูกคลิ๊ก
                                        launch('https://www.mirror.or.th/');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Color(0xFFEAEAEA)),
                                                borderRadius: BorderRadius.circular(100),
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                    'assets/rectangle_601.png',
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                width: 131,
                                                height: 130,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(15.8, 0, 15.8, 0),
                                              child: Text(
                                                'มูลนิธิกระจกเงา',
                                                style: GoogleFonts.getFont(
                                                  'IBM Plex Sans Thai',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Add more widgets inside this Column if needed
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        //เปิดลิงก์เมื่อรูปถูกคลิ๊ก
                                        launch('https://greenroadenterprise.com/');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Color(0xFFEAEAEA)),
                                                borderRadius: BorderRadius.circular(100),
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                    'assets/rectangle_604.png',
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                width: 131,
                                                height: 130,
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'Green Road',
                                                style: GoogleFonts.getFont(
                                                  'IBM Plex Sans Thai',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Add more widgets inside this Column if needed
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        //เปิดลิงก์เมื่อรูปถูกคลิ๊ก
                                        launch('https://pankansociety.com//');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Color(0xFFEAEAEA)),
                                                borderRadius: BorderRadius.circular(100),
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                    'assets/rectangle_605.png',
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                width: 131,
                                                height: 130,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(1.4, 0, 1.4, 0),
                                              child: Text(
                                                'โครงการร้านปันกัน...',

                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.getFont(
                                                  'IBM Plex Sans Thai',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Add more widgets inside this Column if needed
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        //เปิดลิงก์เมื่อรูปถูกคลิ๊ก
                                        launch('https://shorturl.asia/czpt9');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Color(0xFFEAEAEA)),
                                                borderRadius: BorderRadius.circular(100),
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                    'assets/rectangle_60.png',
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                width: 131,
                                                height: 130,
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'ห้องได้บุญ',
                                                style: GoogleFonts.getFont(
                                                  'IBM Plex Sans Thai',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Add more widgets inside this Column if needed
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        //เปิดลิงก์เมื่อรูปถูกคลิ๊ก
                                        launch('https://www.baannokkamin.org/');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Color(0xFFEAEAEA)),
                                                borderRadius: BorderRadius.circular(100),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    'assets/rectangle_603.png',
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                width: 131,
                                                height: 130,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(10.6, 0, 10.6, 0),
                                              child: Text(
                                                'มูลนิธิบ้านนกขมิ้น',
                                                style: GoogleFonts.getFont(
                                                  'IBM Plex Sans Thai',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Add more widgets inside this Column if needed
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        //เปิดลิงก์เมื่อรูปถูกคลิ๊ก
                                        launch('https://www.kanlayano.org/home/info/info_donation.php');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                              decoration: BoxDecoration(
                                                border: Border.all(color: Color(0xFFEAEAEA)),
                                                borderRadius: BorderRadius.circular(100),
                                                color: Color(0xFFFFFFFF),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    'assets/images/rectangle_606.png',
                                                  ),
                                                ),
                                              ),
                                              child: Container(
                                                width: 131,
                                                height: 130,
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'มูลนิธิสวนแก้ว',
                                                style: GoogleFonts.getFont(
                                                  'IBM Plex Sans Thai',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Add more widgets inside this Column if needed
                                  ],
                                ),
                                // Add more columns if needed
                              ],
                            ),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 6),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            child: Text(
                              'โครงการน่าสนใจ',
                              style: GoogleFonts.getFont(
                                'IBM Plex Sans Thai',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                letterSpacing: -0.4,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(21, 3, 21, 0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 192,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // เปิด URL เมื่อแตะที่รูปภาพ
                                        launch('https://sustainability.pttgcgroup.com/th/projects/8/%E0%B9%80%E0%B8%97%E0%B8%B4%E0%B8%A3%E0%B9%8C%E0%B8%99%E0%B8%8A%E0%B8%B5%E0%B8%A7%E0%B8%B4%E0%B8%95%E0%B9%83%E0%B8%AB%E0%B9%89%E0%B8%82%E0%B8%A2%E0%B8%B0%E0%B8%9E%E0%B8%A5%E0%B8%B2%E0%B8%AA%E0%B8%95%E0%B8%B4%E0%B8%81%E0%B9%83%E0%B8%8A%E0%B9%89%E0%B9%81%E0%B8%A5%E0%B9%89%E0%B8%A7%E0%B8%81%E0%B8%A5%E0%B8%B1%E0%B8%9A%E0%B8%A1%E0%B8%B2%E0%B8%AA%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%87%E0%B8%84%E0%B8%B8%E0%B8%93%E0%B8%84%E0%B9%88%E0%B8%B2-%E0%B8%81%E0%B8%B1%E0%B8%9A-gc-you%E0%B9%80%E0%B8%97%E0%B8%B4%E0%B8%A3%E0%B9%8C%E0%B8%99');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xFFEAEAEA)),
                                          borderRadius: BorderRadius.circular(4),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/rectangle_188.png',
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          width: 192,
                                          height: 241,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'YOUเทิร์น',
                                        style: GoogleFonts.getFont(
                                          'IBM Plex Sans Thai',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: -0.4,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 192,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // เปิด URL เมื่อแตะที่รูปภาพ
                                        launch('https://pankansociety.com/');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xFFEAEAEA)),
                                          borderRadius: BorderRadius.circular(4),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/rectangle_1883.png',
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          width: 192,
                                          height: 241,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'ปันสุข กับปันกัน',
                                        style: GoogleFonts.getFont(
                                          'IBM Plex Sans Thai',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: -0.4,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 192,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // เปิด URL เมื่อแตะที่รูปภาพ
                                        launch('https://www.khaoshong.com/onlinestore/2022/08/08/%E0%B8%97%E0%B9%89%E0%B8%B2%E0%B9%84%E0%B8%A1%E0%B9%88%E0%B8%97%E0%B8%B4%E0%B9%89%E0%B8%87%E0%B8%81%E0%B8%B1%E0%B8%9A%E0%B8%81%E0%B8%B2%E0%B9%81%E0%B8%9F%E0%B9%80%E0%B8%82%E0%B8%B2%E0%B8%8A%E0%B9%88/');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xFFEAEAEA)),
                                          borderRadius: BorderRadius.circular(4),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/rectangle_1881.png',
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          width: 192,
                                          height: 241,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'ท้าไม่ทิ้ง by เขาช่อง',
                                        style: GoogleFonts.getFont(
                                          'IBM Plex Sans Thai',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: -0.4,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 192,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // เปิด URL เมื่อแตะที่รูปภาพ
                                        launch('https://salepage.thamturakit.com/');
                                      },
                                      child: Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xFFEAEAEA)),
                                          borderRadius: BorderRadius.circular(4),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/rectangle_1882.png',
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          width: 192,
                                          height: 241,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'ธรรมธุรกิจ',
                                        style: GoogleFonts.getFont(
                                          'IBM Plex Sans Thai',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          letterSpacing: -0.4,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
