import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Soldtash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF6F9FD),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 19.4, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(27.7, 0, 15.5, 29),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 1.3, 0, 1.3),
                    child: SizedBox(
                      width: 96.4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 13.5, 0),
                            width: 12.9,
                            height: 22.4,
                            child: SizedBox(
                              width: 12.9,
                              height: 22.4,
                              child: SvgPicture.asset(
                                'assets/vectors/vector_1_x2.svg',
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                            child: SizedBox(
                              width: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 1.4, 0),
                                    width: 17.8,
                                    height: 21.3,
                                    child: SizedBox(
                                      width: 17.8,
                                      height: 21.3,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_2_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 2.1, 0, 2.9),
                                    child: SizedBox(
                                      width: 50.8,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0.2, 1.7, 0),
                                            child: SizedBox(
                                              width: 3.9,
                                              height: 16,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_6_x2.svg',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0.3, 1.7, 0),
                                            child: SizedBox(
                                              width: 14,
                                              height: 16,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_5_x2.svg',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0.3, 1.2, 0),
                                            child: SizedBox(
                                              width: 14,
                                              height: 16,
                                              child: SvgPicture.asset(
                                                'assets/vectors/vector_4_x2.svg',
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 14.3,
                                            height: 16.3,
                                            child: SvgPicture.asset(
                                              'assets/vectors/vector_x2.svg',
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
                  ),
                  SizedBox(
                    width: 63,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1.3, 13, 1.2),
                          width: 24.9,
                          height: 22.5,
                          child: SizedBox(
                            width: 24.9,
                            height: 22.5,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_7_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_3_x2.svg',
                            ),
                          ),
                        ),
                      ],
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
        'assets/images/rectangle_198.png',
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
        'assets/images/rectangle_1982.png',
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
                              'assets/images/rectangle_1981.png',
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
              Container(
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
                            'assets/images/rectangle_602.png',
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
              // Add more widgets inside this Column if needed
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
                            'assets/images/rectangle_601.png',
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
              // Add more widgets inside this Column if needed
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
                            'assets/images/rectangle_604.png',
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
              // Add more widgets inside this Column if needed
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
                            'assets/images/rectangle_605.png',
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
              // Add more widgets inside this Column if needed
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
                            'assets/images/rectangle_60.png',
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
              // Add more widgets inside this Column if needed
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
                            'assets/images/rectangle_603.png',
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
              // Add more widgets inside this Column if needed
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
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
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEAEAEA)),
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/rectangle_188.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 192,
                  height: 241,
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
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEAEAEA)),
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/rectangle_1883.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 192,
                  height: 241,
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
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEAEAEA)),
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/rectangle_1881.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 192,
                  height: 241,
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
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEAEAEA)),
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/rectangle_1882.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 192,
                  height: 241,
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