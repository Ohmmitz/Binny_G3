import 'package:binny_project_g3/Howto1.dart';
import 'package:binny_project_g3/Reward.dart';
import 'package:binny_project_g3/ShopDetailPage1.dart';
import 'package:binny_project_g3/appbinny.dart';
import 'package:binny_project_g3/comunity.dart';
import 'package:binny_project_g3/homescreen.dart';
import 'package:binny_project_g3/mapmain.dart';
import 'package:binny_project_g3/mygarden.dart';
import 'package:binny_project_g3/page_one.dart';
import 'package:binny_project_g3/profile.dart';
import 'package:binny_project_g3/scan_home_page.dart';
import 'package:binny_project_g3/sold.dart';
import 'package:binny_project_g3/soldtash.dart';
import 'package:binny_project_g3/trash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:binny_project_g3/homescreen.dart';
import 'package:readmore/readmore.dart';
import 'package:barcode/barcode.dart';
import 'package:barcode_widget/barcode_widget.dart';

void main() {
  runApp(Homepage());
}


class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Title',
      theme: ThemeData(
        primarySwatch: Colors.green, // Example theme
      ),
      home: Homescreen(), // Your starting page
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 123,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/Logo_main.png',
                fit: BoxFit.cover,
                height: 22,
              ),
              SizedBox(
                width: 180,
              ), // Adjust the spacing between the title and the icon
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.search , color: Colors.white,),
                
              ),
              SizedBox(width: 5),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.notifications_none_rounded ,color: Colors.white,),
              ),
            ],
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/appbar.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Stack(children: [     
                Container(
                  height: MediaQuery.of(context).size.height + 0,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 20,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    child: HomeDetail(),
                  ),
                ),
              
          Positioned(
            bottom: 22,
            left: 16,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 8.50,
                    offset: Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Homescreen()),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          size: 30,
                        ),
                        SizedBox(height: 2),
                        Text('หน้าแรก')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) =>  ScanHomePage() ),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.qr_code,
                          size: 30,
                        ),
                        SizedBox(height: 2),
                        Text('สแกนแยกขยะ')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => RewardScreen()),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.comment_outlined,
                          size: 30,
                        ),
                        SizedBox(height: 2),
                        Text('แต้มสะสม')
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.person_outlined,
                          size: 30,
                        ),
                        SizedBox(height: 2),
                        Text('โปรไฟล์')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class HomeDetail extends StatefulWidget {
  HomeDetail({Key? key});

  @override
  State<HomeDetail> createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Listshop()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/Contactc.png',
                    height: 48,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PageOne()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/QandA.png',
                    height: 48,
                    // Add other properties as needed
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigate to TrashPage here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepoint()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/Tools.png',
                    height: 48,
                    // Add other properties as needed
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigate to Soldtash here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Soldsold()),
                );
              },
              child: Column(
                children: [
                  Image.asset(
                    'assets/Save.png',
                    height: 48,
                    // Add other properties as needed
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
          child: GestureDetector(
            onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Card(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Adjusts the card to wrap its content
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Level 0.01',
                                    style: TextStyle(
                                      fontFamily: 'MyBinnyFont',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      backgroundColor: Color.fromRGBO(2, 194, 117, 15),
                                    ),
                                  ),
                                  Text(
                                    '#0023412000',
                                    style: TextStyle(
                                      fontFamily: 'MyBinnyFont',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'ปริมาณขยะที่ฉันช่วยไว้',
                                  style: TextStyle(
                                    fontFamily: 'MyBinnyFont',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '10.25',
                                  style: TextStyle(
                                    fontFamily: 'MyBinnyFont',
                                    fontSize: 48,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BarcodeWidget(
                              barcode: Barcode.qrCode(), // Change this to the type of barcode you need
                              data: 'https://flutter.dev', // The data you want to encode
                              backgroundColor: Colors.white,
                              width: 200,
                              height: 200,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Card(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Level 0.01',
                            style: TextStyle(
                              fontFamily: 'MyBinnyFont',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              backgroundColor: Color.fromRGBO(2, 194, 117, 15),
                            ),
                          ),
                          Text(
                            '#0023412000',
                            style: TextStyle(
                              fontFamily: 'MyBinnyFont',
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'ปริมาณขยะที่ฉันช่วยไว้',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '10.25',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 48,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code_scanner_rounded, color: Colors.white),
                    SizedBox(width: 8), // Adjusted width here
                    Text(
                      'สแกนกับร้านรับซื้อขยะที่เข้าร่วม',
                      style: TextStyle(
                        fontFamily: 'MyBinnyFont',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                // Navigate to another page here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommuPage()),
                );
              },
              child: Card(
                child: Container(
                  width: 191,
                  height: 155,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Card1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigate to another page here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Garden()),
                );
              },
              child: Card(
                child: Container(
                  width: 138,
                  height: 155,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Card2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        GestureDetector(
              onTap: () {
                // Navigate to another page here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RewardScreen()),
                );
              },
              child: Card(
                child: Container(
                  height: 195,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Card3.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
        SizedBox(height: 10),
        Text(
          'ปัญหาชวนคุย',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'MyBinnyFont',
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'ร่วมตอบคำถาม หาทางออกไปกับกระทู้ของเพื่อน ๆ',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'MyBinnyFont',
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              //1//
              GestureDetector(
                onTap: () {
                  // Navigate to another page here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageOne()),
                  );
                },
                child: Card(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(16.0), // Adjust the padding values as needed
                    child: Container(
                      width: 216,
                      height: 216,
                      // Adjust decoration properties as needed
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ทำไมพวกเราถึงต้อง\nแยกขยะด้วยหรอคะ?',
                            style: TextStyle(
                              fontFamily: 'MyBinnyFont',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Top comment',
                            style: TextStyle(
                              fontFamily: 'MyBinnyFont',
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(159, 255, 169, 100),
                            ),
                          ),
                          Text(
                            'ส่วนตัวผมมองเป็นในด้านของความรับผิดชอบที่มีต่อสังคมมากกว่าครับ เพราะว่าถ้าพวกเราไม่',
                            style: TextStyle(
                              fontFamily: 'MyBinnyFont',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20), // Added spacing between the text and the next content
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Anonymous\n21 ก.พ. 67',
                                style: TextStyle(
                                  fontFamily: 'MyBinnyFont',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 8), // Adjusted width here
                              Image.asset(
                                'assets/icon.png',
                                height: 36,
                                // Add other properties as needed
                              )           
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              //2//
              GestureDetector(
                onTap: () {
                  // Navigate to another page here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageOne()),
                  );
                },
                child: Card(
                  color: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.all(16.0), // Adjust the padding values as needed
                    child: Container(
                      width: 216,
                      height: 216,
                      // Adjust decoration properties as needed
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        ReadMoreText(
                          'สอบถามหน่อยครับ ส่วนตัวเลี้ยงน้องแมวเลยมีขยะพวกถุงอาหารเม็ด ถุงอาหารเปียก ถุงทรายแมว และกระป๋องอาหารเปียก ขยะพวกนี้สามารถส่งไปที่ไหนได้มั้งครับ ขอบคุณครับ',
                          trimMode: TrimMode.Line,
                          trimLines: 2,
                          colorClickableText: Color.fromARGB(255, 103, 123, 152),
                          trimCollapsedText: '.',
                          trimExpandedText: 'Back',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Top comment',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(159, 255, 169, 100),
                          ),
                        ),
                        Text(
                          'พวกถุงอาหารตากให้แห้ง ส่ง N15 ครับ กระป๋องขายของเก่าได้ครับ',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20), // Added spacing between the text and the next content
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Anonymous\n21 ก.พ. 67',
                              style: TextStyle(
                                fontFamily: 'MyBinnyFont',
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8), // Adjusted width here
                            Image.asset(
                              'assets/icon.png',
                              height: 36,
                              // Add other properties as needed
                            )           
                          ],
                        ),
                      ],
                      ),
                    ),
                  ),
                ),
              ),
              //3//
              Card(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(16.0), // Adjust the padding values as needed
                  child: Container(
                    width: 216,
                    height: 216,
                    decoration: BoxDecoration(
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReadMoreText(
                          'สอบถามค่ะ(มือใหม่หัดแยก) ตัวที่รองพวกหมูมาจากในห้องที่เป็นเจลขาวๆ ค่ะ ตัวนีเรากำจัดไปที่ไหนได้บ้างคะ',
                          trimMode: TrimMode.Line,
                          trimLines: 2,
                          colorClickableText: Color.fromARGB(255, 103, 123, 152),
                          trimCollapsedText: '.',
                          trimExpandedText: 'Back',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Top comment',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(159, 255, 169, 100),
                          ),
                        ),
                        Text(
                          'ทางนี้ตากให้แห้งค่ะแบบไม่ได้เอาด้านในออกค่ะ แล้วส่ง n15 ค่ะ',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20), // Added spacing between the text and the next content
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Anonymous\n21 ก.พ. 67',
                              style: TextStyle(
                                fontFamily: 'MyBinnyFont',
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8), // Adjusted width here
                            Image.asset(
                              'assets/icon.png',
                              height: 36,
                              // Add other properties as needed
                            )           
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //4//
              Card(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(16.0), // Adjust the padding values as needed
                  child: Container(
                    width: 216,
                    height: 216,
                    decoration: BoxDecoration(
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReadMoreText(
                          'อุปกรณ์อิเล็กทรอนิกส์,ถ่านสามารถบริจาคได้ทางไหนบ้างคะ? ',
                          trimMode: TrimMode.Line,
                          trimLines: 2,
                          colorClickableText: Color.fromARGB(255, 103, 123, 152),
                          trimCollapsedText: '.',
                          trimExpandedText: 'Back',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Top comment',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(159, 255, 169, 100),
                          ),
                        ),
                        ReadMoreText(
                          'AIS Shop ตามห้างรับอุปกรณ์อิเล็กทรอนิกส์ค่ะ ส่วนถ่านไฟฉายเราส่งที่สยามพารากอน ชั้น 1 (ใกล้บันไดเลื่อนหน้าธนาคารกรุงเทพค่ะ)',
                          trimMode: TrimMode.Line,
                          trimLines: 2,
                          colorClickableText: Color.fromARGB(255, 103, 123, 152),
                          trimCollapsedText: '.',
                          trimExpandedText: 'Back',
                          style: TextStyle(
                            fontFamily: 'MyBinnyFont',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20), // Added spacing between the text and the next content
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Anonymous\n21 ก.พ. 67',
                              style: TextStyle(
                                fontFamily: 'MyBinnyFont',
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 8), // Adjusted width here
                            Image.asset(
                              'assets/icon.png',
                              height: 36,
                              // Add other properties as needed
                            )           
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
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
            Card(
              child: Container(
                width: 348,
                height: 141,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Card7_1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                width: 348,
                height: 141,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Card7_2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                width: 348,
                height: 141,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Card7_3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
          ),
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}
}
