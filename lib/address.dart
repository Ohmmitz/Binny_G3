import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'locationshop.dart';
import 'mapmain.dart';

class AddressConfirmation extends StatelessWidget {
  final List<String> selectedProductNames;
  final List<double> selectedWeights;
  final List<double> prices;
  final Shop shop;
  final List<String> selectedImagePaths;
  final double totalPrice;
  AddressConfirmation({
    Key? key,
    required this.selectedProductNames,
    required this.selectedWeights,
    required this.prices,
    required this.shop,
    required this.selectedImagePaths,
    required this.totalPrice,
  }) : super(key: key);


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
        title: Text(shop.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                launchMap(); // เรียกใช้งานฟังก์ชั่นเมื่อคลิกที่รูปภาพแผนที่
              },
              child: Image.asset(
                'assets/map.jpg',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover, // ทำให้รูปภาพปรับขนาดเพื่อตรงกับขนาดหน้าจอ
              ),
            ),
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
                children: [
                  Material(
                    elevation: 4.0, // เพิ่ม elevation เพื่อให้มีเงา
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // กำหนดรูปร่างเป็นวงกลม
                    ),
                    child: TextField(
                      controller: addressController,
                      decoration: InputDecoration(
                        hintText: 'ที่อยู่',
                        prefixIcon: Icon(Icons.location_pin, color: Colors.green),
                        border: InputBorder.none, // กำหนดให้ไม่มีขอบ
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // ปรับขนาดกล่องข้อความ
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),

                  SizedBox(height: 10),
                  Material(
                    elevation: 4.0, // เพิ่ม elevation เพื่อให้มีเงา
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // กำหนดรูปร่างเป็นวงกลม
                    ),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: 'ชื่อ',
                        prefixIcon: Icon(Icons.person, color: Colors.green),
                        border: InputBorder.none, // กำหนดให้ไม่มีขอบ
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // ปรับขนาดกล่องข้อความ
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                  SizedBox(height: 10),
                  Material(
                    elevation: 4.0, // เพิ่ม elevation เพื่อให้มีเงา
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // กำหนดรูปร่างเป็นวงกลม
                    ),
                    child: TextField(
                      controller: phoneNumberController,
                      decoration: InputDecoration(
                        hintText: 'เบอร์โทรศัพท์ที่ติดต่อได้',
                        prefixIcon: Icon(Icons.phone, color: Colors.green),
                        border: InputBorder.none, // กำหนดให้ไม่มีขอบ
                        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0), // ปรับขนาดกล่องข้อความ
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                  SizedBox(height: 10),
                  Material(
                    elevation: 4.0, // เพิ่ม elevation เพื่อให้มีเงา
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // กำหนดรูปร่างเป็นวงกลม
                    ),
                    child: InkWell(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.calendar_today, color: Colors.green),
                            SizedBox(width: 10),
                            Text(
                              'เลือกวันที่สะดวกให้เข้ารับ',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
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
                              shop: shop,
                              selectedProductNames: selectedProductNames,
                              selectedWeights: selectedWeights,
                              prices: prices,
                              selectedImagePaths: selectedImagePaths,
                              totalPrice: totalPrice,
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
  final Shop shop;
  final List<String> selectedProductNames;
  final List<double> selectedWeights; // เพิ่มน้ำหนักที่เลือก
  final List<double> prices;
  final List<String> selectedImagePaths;
  final double totalPrice;

  ConfirmationPage({
    required this.address,
    required this.name,
    required this.phoneNumber,
    required this.selectedDate,
    required this.shop,
    required this.selectedProductNames,
    required this.selectedWeights,
    required this.prices,
    required this.selectedImagePaths,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shop.name),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                shop.img,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 10, // เปลี่ยนจาก top เป็น bottom
                left: 10,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'นัดรับ $selectedDate',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
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
                  padding: EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                  margin: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ประเภทขยะรีไซเคิล',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < selectedProductNames.length; i++)
                            Text(
                              '${selectedProductNames[i]} - ${selectedWeights[i]} kg', // แสดงชื่อสินค้าและน้ำหนัก
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                        ],
                      ),
                      Divider(),
                      Text('รายละเอียดผู้ส่ง' ,textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_pin,color: Colors.green,),
                          SizedBox(width: 8), // ระยะห่างระหว่างไอคอนกับข้อความ
                          Text(
                            '   $address',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.person,color: Colors.green,),
                          SizedBox(width: 8), // ระยะห่างระหว่างไอคอนกับข้อความ
                          Text(
                            '   $name',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.person,color: Colors.green,),
                          SizedBox(width: 8), // ระยะห่างระหว่างไอคอนกับข้อความ
                          Text(
                            '   $phoneNumber',
                            style: TextStyle(fontSize: 16),
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 100),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              ],
            ),
          ),


          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/c2.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Garbagetruck(
                    address: address,
                    name: name,
                    phoneNumber: phoneNumber,
                    selectedDate: selectedDate,
                    shop: shop,
                    selectedProductNames: selectedProductNames,
                    selectedWeights: selectedWeights,
                    prices: prices,
                    selectedImagePaths: selectedImagePaths,
                    totalPrice: totalPrice,
                  ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'เรียกรถมารับขยะ',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )

          ),

        ],
      ),
    );
  }
}

class Garbagetruck extends StatelessWidget {
  final String address;
  final String name;
  final String phoneNumber;
  final String selectedDate;
  final Shop shop;
  final List<String> selectedProductNames;
  final List<double> selectedWeights;
  final List<double> prices;
  final List<String> selectedImagePaths;
  final double totalPrice;

  Garbagetruck({
    required this.address,
    required this.name,
    required this.phoneNumber,
    required this.selectedDate,
    required this.shop,
    required this.selectedProductNames,
    required this.selectedWeights,
    required this.prices,
    required this.selectedImagePaths,
    required this.totalPrice,
  });

  // คำนวณรายรับทั้งหมด
  double calculateTotalRevenue() {
    double totalRevenue = 0;
    for (int i = 0; i < selectedProductNames.length; i++) {
      totalRevenue += prices[i] * selectedWeights[i];
    }
    return totalRevenue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shop.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // เมื่อปุ่มถูกกด จะย้อนกลับไปหน้าที่แล้ว
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.cancel), // ใช้ไอคอน cancel หรือไอคอนอื่น ๆ ตามที่ต้องการ
            onPressed: () {
              // รายละเอียดเกี่ยวกับการยกเลิก
              // เก็บข้อมูลรายได้ทั้งหมด, รูปภาพร้านค้า, และชื่อร้านค้าในรูปแบบ List<Map>
              List<Map<String, dynamic>> revenueList = [];
              for (int i = 0; i < selectedProductNames.length; i++) {
                Map<String, dynamic> revenueData = {
                  'totalRevenue': prices[i] * selectedWeights[i],
                  'shopName': shop.name,
                  'shopImage': shop.img,
                };
                revenueList.add(revenueData);
              }

              // แสดงผลใน ListView.builder
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('รายได้ทั้งหมด'),
                    content: Container(
                      width: double.maxFinite,
                      height: 200,
                      child: ListView.builder(
                        itemCount: revenueList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image.asset(revenueList[index]['shopImage']),
                            title: Text(revenueList[index]['shopName']),
                            subtitle: Text('รายได้: ${revenueList[index]['totalRevenue']} บาท'),
                          );
                        },
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('ปิด'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // จัดให้ Column ขยายตามทั้งแนวตั้งและแนวนอน
          children: [
            Stack(
              children: [
                Image.asset(
                  shop.img, // เปลี่ยนเป็นตำแหน่งของรูปร้านของคุณ
                  width: double.infinity, // ทำให้รูปขยายตามขนาดของหน้าจอ
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 10,
                  left: 8.0,
                  child: Container(
                    color: Colors.black.withOpacity(0.5), // กำหนดสีพื้นหลังเป็นสีดำด้วยความโปร่งใส
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      shop.name, // เปลี่ยนเป็นข้อความที่ต้องการแสดง
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/c1.png', // เปลี่ยนเป็นตำแหน่งของรูปร้านของคุณ
                  width: double.infinity, // ทำให้รูปขยายตามขนาดของหน้าจอ
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start, // จัดตำแหน่งของผู้ซื้อไปอยู่ด้านซ้าย
                    children: [
                      Text(
                        '  ผู้รับซื้อ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Image.asset(
                        'assets/c4.png',
                      ),
                    ],
                  ),
                )
              ],
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: selectedProductNames.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 4, // เพิ่มเงาให้กับ Card
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), // ปรับรูปร่างของ Card
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // ปรับระยะห่างของ ListTile
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0), // ปรับรูปร่างของรูปภาพ
                          child: Image.asset(
                            selectedImagePaths[index],
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          selectedProductNames[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          'น้ำหนัก: ${selectedWeights[index]} kg',
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Text(
                          'ราคารวม: ${(prices[index] * selectedWeights[index]).toStringAsFixed(2)} บาท',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            // แสดงรายรับทั้งหมด
            // ปุ่มกลับไปยังหน้าแรก
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Listshop()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: Text('กลับหน้าหลัก'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

