import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:binny_project_g3/homescreen.dart';
import 'locationshop.dart';
import 'ShopDetailPage1.dart';


class Listshop extends StatefulWidget {
  const Listshop({Key? key});

  @override
  State<Listshop> createState() => _ListshopState();
}

class _ListshopState extends State<Listshop> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    List<Shop> shop = [
      Shop("Bk Recycle Group", "10B", "0.5km", "assets/unnamed.jpg"),
      Shop("ร้านล้อซัยเส็ง(รับซื้อขยะรีไซเคิ้ล)", "30B", "1.0km", "assets/shop2.jpg"),
      Shop("ร้านรับซื้อของเก่า สาธุประดิษฐ์ (ตั้งเจริญ)", "35B", "1.4km", "assets/shop3.jpg")
    ];
    return Scaffold(
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 5), // Adjusted spacing for better alignment
              SizedBox(width: 5), // Adjusted spacing for better alignment
              Image.asset('assets/Group.png'),
              SizedBox(width: 20), // Adjusted width for better alignment
              Expanded(
                child: Container(), // Expanded widget to push the history icon to the end
              ),
              IconButton(
                icon: Icon(Icons.history),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderHistoryPage()),
                  );
                },
              ),
              SizedBox(width: 10), // Adjusted spacing for better alignment
              Icon(Icons.search_rounded),
              SizedBox(width: 5), // Adjusted spacing for better alignment
            ],
          ),
          automaticallyImplyLeading: false,
        ),

        body: Container(
          color: Color(0xF6F9FD),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          _launchGoogleMaps();
                        },
                        icon: Icon(Icons.near_me),
                        label: Text(
                          'ร้านรับซื้อขยะใกล้ฉัน',
                          style: TextStyle(fontSize: 15),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.green,
                          backgroundColor: Colors.white,
                          padding:
                          EdgeInsets.symmetric(horizontal: 20,),
                          side: BorderSide(color: Colors.green),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          _launchGoogleMaps();
                        },
                        icon: Icon(Icons.location_pin),
                        label: Text('ระบุที่ตั้งของฉัน'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green,

                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _launchGoogleMaps();
                        },
                        child: Text('ที่อยู่'),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.green,
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            side: BorderSide(color: Colors.green),
                            minimumSize: Size(370,0)),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: shop.length,
                  itemBuilder: (context, index) {
                    Shop nameshop = shop[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: Hero(
                          tag: nameshop.name, // ระบุ tag เป็นชื่อร้าน
                          child: Container(
                            width: 150,
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(nameshop.img),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        title: Text(nameshop.name),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                nameshop.price,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(nameshop.distance),
                            Text("ราคารับชื้อขยะ", style: TextStyle(color: Colors.green)),
                          ],
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShopDetailPage(shop[index]),
                            ),
                          );
                        },
                      ),
                    );

                  },
                ),
              )
            ],
          ),
        ),

    );
  }


  void _launchGoogleMaps() async {
    const url = 'https://www.google.com/maps/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ประวัติการขายขยะ'),
      ),
      body: Column(
        children: [
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.pending_actions),
                label: 'กำลังดำเนินการ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.check),
                label: 'เสร็จสิ้น',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.cancel),
                label: 'ยกเลิก',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green,
            onTap: _onItemTapped,
          ),
          Expanded(
            child: _selectedIndex == 0
                ? OrderProcessingPage()
                : _selectedIndex == 1
                ? OrderCompletedPage()
                : OrderCancelledPage(),
          ),
        ],
      ),
    );
  }
}

class OrderProcessingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> orders = [
      {
        'id': 1,
        'shop': 'BK Recycle Group',
        'status': 'กำลังดำเนินการ',
        'image': 'assets/unnamed.jpg', // เพิ่ม key 'image' เพื่อระบุที่อยู่ของรูปภาพ
      },
    ];

    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(orders[index]['image']), // เพิ่มรูปภาพใน leading
          title: Text('Order #${orders[index]['id']}'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Status: ${orders[index]['status']}'),
            ],
          ),
        );
      },
    );
  }
}

class OrderCompletedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> orders = [
      {
        'id': '',
        'product': '',
        'price': '',
        'status': '',
        'image': '', // เพิ่ม key 'image' เพื่อระบุที่อยู่ของรูปภาพ
      },
    ];

    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return ListTile(

          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            ],
          ),
        );
      },
    );
  }
}

class OrderCancelledPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> orders = [
      {'id': 3,
        'product': 'ร้านรับซื้อของเก่า สาธุประดิษฐ์ (ตั้งเจริญ)',
        'price': 1200,
        'status': 'ยกเลิก',
        'image': 'assets/shop3.jpg' // เพิ่ม key 'image' เพื่อระบุที่อยู่ของรูปภาพ
      },
    ];

    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return ListTile(

          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            ],
          ),
        );
      },
    );
  }
}