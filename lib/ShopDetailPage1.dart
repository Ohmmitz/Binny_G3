import 'package:flutter/material.dart';
import 'address.dart';
import 'locationshop.dart';
import 'mapmain.dart';

class DisplayWeightPage extends StatelessWidget {
  final List<String> productNames;
  final List<double> weights;
  final List<double> prices;

  DisplayWeightPage(this.productNames, this.weights, this.prices);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('น้ำหนัก'),
      ),
      body: ListView.builder(
        itemCount: productNames.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('สินค้า: ${productNames[index]}'),
            subtitle: Text('น้ำหนัก: ${weights[index]} กิโลกรัม'),
            trailing: Text('ราคา/กก: ${prices[index]} บาท'),
          );
        },
      ),
    );
  }
}

class ShopDetailPage extends StatefulWidget {
  final Shop shop;

  ShopDetailPage(this.shop);

  @override
  _ShopDetailPageState createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  List<String> imagePaths = [
    'assets/image_0.png',
    'assets/image_1.png',
    'assets/image_2.png',
    'assets/image_3.png',
    'assets/image_4.png',
    'assets/image_5.png',
    'assets/image_6.png',
    'assets/image_7.png',
    'assets/image_8.png',
    'assets/image_9.png',
    'assets/image_10.png',
    'assets/image_11.png',
  ];
  List<String> productNames = [
    'กล่องเครื่องดื่ม UHT',
    'กระป๋องอะลูมิเนียม',
    'ขวดน้ำใส PET',
    'เสื้อผ้า',
    'อุปกรณ์อิเล็กทรอนิกส์',
    'ขวดแก้ว',
    'น้ำมันพืชใช้แล้ว',
    'กระดาษ',
    'พลาสติก',
    'ถุงขนม/ถุงกาแฟ',
    'พลาสติกแข็ง HDPE',
    'กระป๋องเหล็ก สังกะสีปี๊ป',
  ];
  List<double> prices = [
    1.2,
    1.2,
    0.5,
    2.0,
    1.5,
    0.7,
    0.9,
    0.8,
    1.0,
    0.3,
    1.0,
    1.5,
  ];
  List<double> weights = List.generate(12, (index) => 0.0);
  List<int> selectedImageIndices = [];
  bool isGridVisible = false;

  double _calculateProductPrice(int index) {
    return prices[index] * weights[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.shop.name),
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: 10),
            children: [
              Stack(
                children: [
                  Image.asset(
                    widget.shop.img,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 2,
                      ),
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
                padding: EdgeInsets.all(8.0),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "เลือกประเภทขยะรีไซเคิล",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isGridVisible = !isGridVisible;
                            });
                          },
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 2,
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        // Show selected images
                        if (selectedImageIndices.isNotEmpty) ...[
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: selectedImageIndices.map((index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          imagePaths[index],
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          // Create TextField for each selected image
                        ],
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: selectedImageIndices.map((index) {
                                return Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'สินค้า: ${productNames[index]}',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'ราคา: ${prices[index]} บาท',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Expanded(
                                        flex: 3,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: 'ใส่น้ำหนักน้ำหนัก (กิโลกรัม)',
                                          ),
                                          onChanged: (text) {
                                            setState(() {
                                              try {
                                                double weight = double.parse(text);
                                                weights[index] = weight; // Store weight in the list
                                              } catch (e) {
                                                print("Invalid double: $text"); // Print error message
                                              }
                                            });
                                          },

                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (isGridVisible)
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isGridVisible = false;
                  });
                },
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  child: Center(
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: List.generate(imagePaths.length, (index) {
                        final isSelected = selectedImageIndices.contains(index);
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isSelected) {
                                selectedImageIndices.remove(index);
                              } else {
                                selectedImageIndices.add(index);
                              }
                            });
                          },
                          child: Card(
                            color: isSelected ? Colors.grey : Colors.white,
                            child: Image.asset(
                              imagePaths[index],
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ElevatedButton(
              onPressed: selectedImageIndices.isNotEmpty && _areWeightsFilled() ? () {
                List<String> selectedProductNames = [];
                List<double> selectedWeights = [];
                for (int i = 0; i < selectedImageIndices.length; i++) {
                  int index = selectedImageIndices[i];
                  selectedProductNames.add(productNames[index]);
                  selectedWeights.add(weights[index]);
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddressConfirmation(
                      selectedProductNames: selectedProductNames,
                      selectedWeights: selectedWeights,
                      prices: prices,
                      shop: widget.shop,
                      selectedImagePaths: selectedImageIndices.map((index) => imagePaths[index]).toList(),
                      totalPrice: selectedProductNames.fold<double>(
                        0,
                            (previousValue, element) =>
                        previousValue +
                            prices[productNames.indexOf(element)] *
                                weights[productNames.indexOf(element)],
                      ),
                    ),
                  ),
                );
              } : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: Text('ถัดไป'),
            ),
          ),
        ],
      ),
    );
  }

  // เพิ่มเมท็อดเช็คว่า textfield ทุกตัวมีข้อมูลหรือไม่
  bool _areWeightsFilled() {
    for (int index in selectedImageIndices) {
      if (weights[index] == 0.0) {
        return false;
      }
    }
    return true;
  }
}
