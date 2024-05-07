import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'address.dart';
import 'locationshop.dart';

class ShopDetailPage extends StatefulWidget {
  final Shop shop;

  ShopDetailPage(this.shop);

  @override
  _ShopDetailPageState createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  List<String> selectedItems = [];
  Map<String, String> itemData = {};
  Map<String, String> itemLabels = {
    "ขวดน้ำใส PET": "ขวดน้ำใส PET",
    "ขวดแก้ว": "ขวดแก้ว",
    "น้ำมันพืชใช้แล้ว": "น้ำมันพืชใช้แล้ว",
    "กระป๋องอะลูมิเนียม": "กระป๋องอะลูมิเนียม",
    "พลาสติกแข็ง HDPE": "พลาสติกแข็ง HDPE",
    "อุปกรณ์อิเล็กทรอนิกส์": "อุปกรณ์อิเล็กทรอนิกส์",
    "พลาสติก": "พลาสติก",
    "กระดาษ": "กระดาษ",
    "กล่องเครื่องดื่ม UHT": "กล่องเครื่องดื่ม UHT",
    "เสื้อผ้า": "เสื้อผ้า",
    "ถุงขนม/ถุงกาแฟ": "ถุงขนม/ถุงกาแฟ",
    "กระป๋องเหล็ก สังกะสีปี๊ป": "กระป๋องเหล็ก สังกะสีปี๊ป",
  };

  bool showCheckboxes = false;

  Map<String, double> itemMultipliers = {
    "ขวดน้ำใส PET": 0.5,
    "ขวดแก้ว": 0.7,
    "น้ำมันพืชใช้แล้ว": 0.9,
    "กระป๋องอะลูมิเนียม": 1.2,
    "พลาสติกแข็ง HDPE": 1.0,
    "อุปกรณ์อิเล็กทรอนิกส์": 1.5,
    "พลาสติก": 1.0,
    "กระดาษ": 0.8,
    "กล่องเครื่องดื่ม UHT": 1.2,
    "เสื้อผ้า": 2.0,
    "ถุงขนม/ถุงกาแฟ": 0.3,
    "กระป๋องเหล็ก สังกะสีปี๊ป": 1.5,
  };

  Map<String, double> totalPrice = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.shop.name),
      ),
      body: Stack(
        children: [
          Container(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
              children: [
                Stack(
                  children: [
                    Image.asset(
                      widget.shop.img,
                      width: 400,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 250,
                      left: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2),
                        child: Text(
                          widget.shop.name,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "เลือกประเภทขยะรีไซเคิล",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Visibility(
                        visible: showCheckboxes,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            for (var item in shopItems)
                              CheckboxListTile(
                                title: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(child: Text(item)),
                                    if (selectedItems.contains(item))
                                      Expanded(
                                        child: TextFormField(
                                          inputFormatters: [
                                            FilteringTextInputFormatter.digitsOnly,
                                          ],
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            labelText: itemLabels[item],
                                            border: OutlineInputBorder(),
                                          ),
                                          onChanged: (value) {
                                            setState(() {
                                              itemData[item] = value;
                                              totalPrice[item] = double.parse(value) * (itemMultipliers[item] ?? 0);
                                            });
                                          },
                                        ),
                                      ),
                                  ],
                                ),
                                value: selectedItems.contains(item),
                                onChanged: (bool? value) {
                                  setState(() {
                                    if (value != null && value) {
                                      selectedItems.add(item);
                                    } else {
                                      selectedItems.remove(item);
                                      itemData.remove(item);
                                      totalPrice.remove(item);
                                    }
                                  });
                                },
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showCheckboxes = !showCheckboxes;
                    });
                  },
                  child: Text(showCheckboxes ? "ซ่อนประเภทขยะ" : "แสดงประเภทขยะ"),
                ),
                if (selectedItems.isNotEmpty) ...[
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.grey.withOpacity(0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "รายละเอียด",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        for (var item in selectedItems) ...[
                          SizedBox(height: 10),
                          Text(
                            itemLabels[item] ?? "",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "ปริมาณ: ${itemData[item] ?? ""} กิโลกรัม",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "ราคา : ${itemMultipliers[item] ?? ""} กิโลกรัมละ",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "ยอดสุทธิ์: ${totalPrice[item] ?? 0}",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                  ),
                  onPressed: () {
                    if (selectedItems.isEmpty || itemData.values.any((element) => element.isEmpty)) {
                      // แสดงข้อความบอกให้กรอกข้อมูลให้ครบถ้วน
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("ข้อมูลไม่ครบถ้วน"),
                            content: Text("กรุณาเลือกประเภทขยะและป้อนปริมาณของขยะ"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("ตกลง"),
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      Map<String, double> multipliedData = {};
                      itemData.forEach((key, value) {
                        if (itemMultipliers.containsKey(key)) {
                          multipliedData[key] = double.parse(value) * itemMultipliers[key]!;
                        }
                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddressConfirmation(multipliedData: multipliedData),
                        ),
                      );
                    }
                  },

                  child: Text('ตกลง'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<String> shopItems = [
  "ขวดน้ำใส PET",
  "ขวดแก้ว",
  "น้ำมันพืชใช้แล้ว",
  "กระป๋องอะลูมิเนียม",
  "พลาสติกแข็ง HDPE",
  "อุปกรณ์อิเล็กทรอนิกส์",
  "พลาสติก",
  "กระดาษ",
  "กล่องเครื่องดื่ม UHT",
  "เสื้อผ้า",
  "ถุงขนม/ถุงกาแฟ",
  "กระป๋องเหล็ก สังกะสีปี๊ป",
];
