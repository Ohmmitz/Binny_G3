import 'package:binny_project_g3/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class AddressConfirmation extends StatelessWidget {
  final Map<String, double> multipliedData;

  AddressConfirmation({required this.multipliedData});

  TextEditingController addressController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  double calculateTotal(Map<String, double> data) {
    double total = 0.0;
    for (var value in data.values) {
      total += value;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('กรอกข้อมูล'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                launchMap(); // เรียกใช้งานฟังก์ชั่นเมื่อคลิกที่รูปภาพแผนที่
              },
              child: Image.asset(
                'assets/images/map.jpg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover, // ทำให้รูปภาพปรับขนาดเพื่อตรงกับขนาดหน้าจอ
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  TextField(
                    controller: addressController,
                    decoration: InputDecoration(
                      hintText: 'ที่อยู่',
                      prefixIcon: Icon(Icons.location_pin, color: Colors.green),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent), // กำหนดให้ไม่มีขอบสีขาว
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder( // เส้นขอบเมื่อไม่ได้รับการเน้น
                        borderSide: BorderSide(color: Colors.green), // กำหนดสีเส้นขอบเป็นสีเขียว
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'ชื่อผู้ชาย',
                      prefixIcon: Icon(Icons.person, color: Colors.green),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      hintText: 'เบอร์โทรศัพท์ที่ติดต่อได้',
                      prefixIcon: Icon(Icons.phone, color: Colors.green),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: TextField(
                      controller: dateController,
                      decoration: InputDecoration(
                        labelText: 'เลือกวันที่สะดวกให้เข้ารับ',
                        prefixIcon: Icon(Icons.calendar_today, color: Colors.green),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                          borderRadius: BorderRadius.circular(10),
                        ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20)
                      ),
                      readOnly: true,
                      onTap: () {
                        _selectDate(context);
                      },
                    ),
                  ),
                  Text(
                    'ประเภทขยะ',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // แสดงข้อมูลที่ได้รับจาก ShopDetailPage
                  for (var entry in multipliedData.entries)
                    Text('${entry.key}: ${entry.value}'),
                  SizedBox(height: 10),
                  Text(
                    'รายรับทั้งหมด : ${calculateTotal(multipliedData)} บาท',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "ค่าบริการ 10 บาท",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // ตรวจสอบว่าข้อมูลไม่ว่างเปล่าทั้งหมดก่อนที่จะยืนยัน
                      if (addressController.text.isNotEmpty &&
                          nameController.text.isNotEmpty &&
                          phoneNumberController.text.isNotEmpty &&
                          dateController.text.isNotEmpty) {
                        // ย้ายไปหน้าใหม่เพื่อแสดงข้อมูลที่พิมพ์และรวมยอดรายรับ
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmationPage(
                              address: addressController.text,
                              name: nameController.text,
                              phoneNumber: phoneNumberController.text,
                              selectedDate: dateController.text,
                              typesOfWaste: multipliedData,
                              totalIncome: calculateTotal(multipliedData),
                            ),
                          ),
                        );
                      } else {
                        // แจ้งเตือนให้ใส่ข้อมูลให้ครบถ้วน
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('กรุณากรอกข้อมูลให้ครบถ้วน'),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('ยืนยันข้อมูล'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      dateController.text = picked.toString().split(" ")[0];
    }
  }

  void launchMap() async {
    const url = 'https://www.google.com/maps'; // ลิงก์ไปยัง Google Maps
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'ไม่สามารถเปิดแผนที่ได้: $url';
    }
  }
}

class ConfirmationPage extends StatelessWidget {
  final String address;
  final String name;
  final String phoneNumber;
  final String selectedDate;
  final Map<String, double> typesOfWaste;
  final double totalIncome;

  ConfirmationPage({
    required this.address,
    required this.name,
    required this.phoneNumber,
    required this.selectedDate,
    required this.typesOfWaste,
    required this.totalIncome,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ยืนยันข้อมูล'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 50,),
          Image.asset(
            'assets/images/c1.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Image.asset(
            'assets/images/c4.png',
            width: 356,
            height: 90,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'ประเภทขยะและจำนวน',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: Offset(0, 2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (var entry in typesOfWaste.entries)
                            Text(
                              '${entry.key}: ${entry.value}',
                              style: TextStyle(
                                fontSize: 16,
                                shadows: [
                                  Shadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: Offset(0, 2),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          Divider(),
                          Text(
                            '           รายละเอียดผู้ส่ง',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: Offset(0, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Text(
                            'ที่อยู่ ',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: Offset(0, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                          Text(
                             address,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: Offset(0, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(),
                          Text(
                            'ชื่อผู้ชาย ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: Offset(0, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),

                          Text(
                             name,
                            style: TextStyle(
                              fontSize: 16,
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: Offset(0, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(),
                          Text(
                            'เบอร์โทรศัพท์ ',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: Offset(0, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                          Text(
                             phoneNumber,
                            style: TextStyle(
                              fontSize: 16,
                              shadows: [
                                Shadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: Offset(0, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


                SizedBox(height: 10),

              ],
            ),
          ),
          SizedBox(height: 10),
          // ส่วนที่ 1: ที่อยู่, ชื่อผู้ขาย, เบอร์โทร
          Divider(),
          // เส้นแบ่งส่วน
          Container(
            padding: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('นัดรับ ',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
                Text(selectedDate,style: TextStyle(
                  fontSize: 16
                ),),
                Text('รายรับทั้งหมด \n     $totalIncome บาท',
                  textAlign: TextAlign.start,style: TextStyle(
                    fontSize: 18,fontWeight: FontWeight.bold,
                  ),),
              ],
            ),
          ),
          Divider(),
          // เส้นแบ่งส่วน
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/c2.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 20),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) =>  HomePage()), // นี่คือหน้ายืนยันข้อมูลของคุณ
                  );

                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('ยืนยัน', style: TextStyle(fontSize: 18,color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
