import 'package:binny_project_g3/Reward.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 123,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Row(
            children: [
              Image.asset('assets/logo.png', height: 30),
              SizedBox(width: 186),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(Icons.search , color: Colors.white,),
                
              ),
              SizedBox(width: 8),
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
        ),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/bag.png',
                      height: 30,
                      // Add other properties as needed
                    ),
                    SizedBox(height: 8),
                    Text('ติดต่อขายขยะ' ,style: TextStyle(
                      fontFamily: 'MyBinnyFont',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/board.png',
                      height: 30,
                      // Add other properties as needed
                    ),
                    SizedBox(height: 8),
                    Text('ถามตอบ',style: TextStyle(
                      fontFamily: 'MyBinnyFont',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/tree.png',
                      height: 30,
                      // Add other properties as needed
                    ),
                    SizedBox(height: 8),
                    Text('คู่มือแยกขยะ',style: TextStyle(
                      fontFamily: 'MyBinnyFont',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/love.png',
                      height: 30,
                      // Add other properties as needed
                    ),
                    SizedBox(height: 8),
                    Text('บริจาคขยะ',style: TextStyle(
                      fontFamily: 'MyBinnyFont',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(8.0), // Adjust the padding values as needed
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
                // Other card properties as needed
              ),
            ),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
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
                Card(
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
              ],
            ),
            SizedBox(height: 10),
            Card(
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
                  //2//
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
                              'อุปกรณ์อิเล็กทรอนิกส์,ถ่านสามารถบริจาคได้ทางไหนบ้างคะ? ',
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
      ),
    );
  }
}

