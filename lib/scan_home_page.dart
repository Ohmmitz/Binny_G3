import 'dart:io';
import 'package:binny_project_g3/homescreen.dart';
import 'package:binny_project_g3/models/barcode_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'scan_detail_page.dart';
import '../model/barcode_model.dart';

class ScanHomePage extends StatefulWidget {
  const ScanHomePage({Key? key});

  @override
  State<ScanHomePage> createState() => _ScanHomePageState();
}

class _ScanHomePageState extends State<ScanHomePage> {
  final picker = ImagePicker();
  String _searchQuery = '';

  late List<Category> categories;
  late List<Method> methods;
  late List<Item> items;

  final TextEditingController _idController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();

  File? _pickedImage;

  String? scannedBarcode;
  bool _isVisible = false;

  late List<DropdownMenuItem<Category>> categoryItems;
  Category? selectedCategory;
  late List<DropdownMenuItem<Method>> methodItems;
  Method? selectedMethod;

  @override
  void initState() {
    super.initState();

    // Initialize categories
    categories = [
      Category(name: 'ขยะรีไซเติล', imagePath: 'lib/assets/category-recycle.png'),
      Category(name: 'ขยะทั่วไป', imagePath: 'lib/assets/category-normal.png'),
      Category(name: 'ขยะอันตราย', imagePath: 'lib/assets/category-danger.png'),
      Category(name: 'ขยะเปียก', imagePath: 'lib/assets/category-food.png'),
    ];

    // Initialize methods
    methods = [
      Method(name: 'ขวด', imagePath: 'lib/assets/method-bottle.png'),
      Method(name: 'กระป๋อง', imagePath: 'lib/assets/method-can.png'),
      Method(name: 'กล่อง', imagePath: 'lib/assets/method-carton.png'),
      Method(name: 'เครื่องใช้ไฟฟ้า', imagePath: 'lib/assets/method-electronic.png'),
      Method(name: 'แก้ว', imagePath: 'lib/assets/method-glass.png'),
      Method(name: 'เหล็ก', imagePath: 'lib/assets/method-metal.png'),
      Method(name: 'พลาสติก', imagePath: 'lib/assets/method-plastic.png'),
      Method(name: 'กระป๋องเหล็ก', imagePath: 'lib/assets/baygon-type.png'),
    ];

    // Initialize items
    items = [
      Item(
        id: '8852086001028',
        image: 'assets/crystal.png',
        name: 'Crystal',
        type: 'ถังขยะรัไซเคิล',
        category: categories[0], // Use the first category
        resource: null,
        image2: null,
        method: methods[0],
      ),
      Item(
        id: '8858998584727',
        image: 'assets/baygon.png',
        name: 'Bygon',
        type: 'ถังขยะอันตราย',
        category: categories[2], // Use the third category
        resource: null,
        image2: null,
        method: methods[7],
      ),
      // Add more items as needed
    ];

    // Initialize dropdown menu items for categories
    categoryItems = categories.map((Category category) {
      return DropdownMenuItem<Category>(
        value: category,
        child: Text(category.name),
      );
    }).toList();

    // Initialize dropdown menu items for methods
    methodItems = methods.map((Method method) {
      return DropdownMenuItem<Method>(
        value: method,
        child: Text(method.name),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    Item matchedItem = items.firstWhere(
          (item) => item.id == scannedBarcode,
      orElse: () => Item(
        id: '',
        image: 'assets/recycle-icon.png',
        name: '',
        type: '',
        category: categories.first,
        resource: null,
        image2: null,
        method: methods[0], // Initialize method to null here
      ),
    );

    if (matchedItem.id.isNotEmpty) {
      _isVisible = true;
    } else {
      _isVisible = false;
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 249, 253, 1),
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Homescreen()),
              );
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text(
                          'เพิ่มสินค้า',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'MyBinnyFont',
                          ),
                        ),
                        elevation: 24.0,
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
                              if (pickedFile != null) {
                                setState(() {
                                  _pickedImage = File(pickedFile.path);
                                });
                              }
                            },
                            child: const Text(
                              'ถ่ายรูป',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'MyBinnyFont',
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                items.add(
                                  Item(
                                    id: _idController.text,
                                    image: _imageController.text,
                                    image2: _pickedImage, // Store the image path in image2
                                    name: _nameController.text,
                                    type: _typeController.text,
                                    category: selectedCategory ?? categories[0], // Use selectedCategory if available, otherwise use the first category
                                    method: selectedMethod ?? methods[0], // Use selectedMethod if available, otherwise use the first method
                                  ),
                                );
                                // Clear text field values and image path
                                _idController.clear();
                                _nameController.clear();
                                _typeController.clear();
                                _pickedImage = null;
                              });
                              Navigator.pop(context);
                            },
                            child: const Text(
                                'เพิ่ม',
                              style: TextStyle(
                                fontFamily: 'MyBinnyFont',
                                color: Colors.black
                              ),
                            ),
                          ),
                        ],
                        content: SingleChildScrollView(
                          child: SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: _pickedImage != null ? Image.file(_pickedImage!) : Container(),
                                ),
                                TextFormField(
                                  controller: _idController,
                                  decoration: const InputDecoration(
                                    labelText: 'รหัสสินค้า',
                                    labelStyle: TextStyle(
                                        fontFamily: 'MyBinnyFont',
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller: _nameController,
                                  decoration: const InputDecoration(
                                    labelText: 'ชื่อสินค้า',
                                    labelStyle: TextStyle(
                                      fontFamily: 'MyBinnyFont',
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller: _typeController,
                                  decoration: const InputDecoration(
                                    labelText: 'ประเภทถังขยะ',
                                    labelStyle: TextStyle(
                                      fontFamily: 'MyBinnyFont',
                                    ),
                                  ),
                                ),
                                DropdownButtonFormField<Category>(
                                  value: selectedCategory,
                                  items: categoryItems,
                                  onChanged: (Category? value) {
                                    setState(() {
                                      selectedCategory = value!;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'ประเภทสินค้า',
                                    labelStyle: TextStyle(
                                      fontFamily: 'MyBinnyFont',
                                    ),
                                  ),
                                ),
                                DropdownButtonFormField<Method>(
                                  value: selectedMethod,
                                  items: methodItems,
                                  onChanged: (Method? value) {
                                    setState(() {
                                      selectedMethod = value!;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    labelText: 'วิธีการ',
                                    labelStyle: TextStyle(
                                      fontFamily: 'MyBinnyFont',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      );
                    },
                  );
                },
                child: const Icon(
                  Icons.add_circle_rounded,
                  color: Color.fromRGBO(2, 194, 117, 1),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            splashFactory: NoSplash.splashFactory,
            tabAlignment: TabAlignment.center,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            dividerColor: Colors.transparent,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: const Color.fromRGBO(2, 194, 117, 1),
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            tabs: const [
              Tab(
                child: Text(
                  'บาร์โค้ด',
                  style: TextStyle(fontFamily: 'MyBinnyFont'),
                ),
              ),
              Tab(
                child: Text(
                  'รหัสบาร์โค้ด',
                  style: TextStyle(fontFamily: 'MyBinnyFont'),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Stack(
              children: [
                Positioned.fill(
                  child: AspectRatio(
                    aspectRatio: 9 / 16,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: MobileScanner(
                          controller: MobileScannerController(
                            detectionSpeed: DetectionSpeed.noDuplicates,
                          ),
                          onDetect: (capture) {
                            final List<Barcode> barcodes = capture.barcodes;
                            if (barcodes.isNotEmpty) {
                              setState(() {
                                scannedBarcode = barcodes.first.rawValue;
                              });
                            } else {
                              setState(() {
                                scannedBarcode = null;
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 20,
                  right: 20,
                  child: Opacity(
                    opacity: _isVisible ? 1.0 : 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: ListTile(
                          leading: SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.asset(
                              matchedItem.category.imagePath,
                            ),
                          ),
                          title: Text(
                            matchedItem.name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'MyBinnyFont',
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                matchedItem.id,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'MyBinnyFont',
                                ),
                              ),
                              const Divider(
                                thickness: 1,
                              ),
                              Text(
                                matchedItem.type,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'MyBinnyFont',
                                ),
                              ),
                            ],
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailPage(matchedItem: matchedItem,)),
                              );
                            },
                            child: Image.asset('lib/assets/next-arrow.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Scaffold(
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0 ,vertical: 10),
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        maxLines: 1,
                        style: const TextStyle(fontSize: 16,fontFamily: 'MyBinnyFont',),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          labelText: "กรอกรหัสบาร์โค้ด 13 หลัก/ชื่อสินค้า",
                          labelStyle: const TextStyle(fontFamily: 'MyBinnyFont'),
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Colors.green,
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _searchQuery = value.toLowerCase();
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        if (item.id.toLowerCase().contains(_searchQuery) || item.name.toLowerCase().contains(_searchQuery)){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black.withOpacity(0.2),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                                            border: Border.all(
                                              color: Colors.black.withOpacity(0.2),
                                              width: 1.0, // Increased width
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              width: 100,
                                              height: 100,
                                              child: item.image.isEmpty
                                                  ? Image.file(File(item.image2!.path))
                                                  : Image.asset(item.image),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 15), // Add space between the image and text
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              item.id,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromRGBO(2, 194, 117, 1),
                                                fontSize: 16,
                                                fontFamily: 'MyBinnyFont',
                                              ),
                                            ),
                                            Text(
                                              item.name,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16,
                                                fontFamily: 'MyBinnyFont',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
