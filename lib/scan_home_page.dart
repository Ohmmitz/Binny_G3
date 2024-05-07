import 'package:binny_project_g3/models/barcode_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'detail_page.dart';


class ScanHomePage extends StatefulWidget {
  const ScanHomePage({Key? key});

  @override
  State<ScanHomePage> createState() => _ScanHomePageState();
}

class _ScanHomePageState extends State<ScanHomePage> {

  String? scannedBarcode;
  bool _isVisible = false;

  // Define items
  List<Item> items = [
    Item(
        id: '8852086001028',
        image: 'lib/assets/crystal.png',
        name: 'Crystal',
        type: 'ถังขยะรัไซเคิล',
        category: 'lib/assets/recycle-icon.png',
        resource: 'lib/assets/crystal-resource.png',
        method: 'lib/assets/crystal-type.png',
    ),
    Item(
        id: '8858998584727',
        image: 'lib/assets/baygon.png',
        name: 'Tea Brow sugar',
        type: 'ถังขยะอันตราย',
        category: 'lib/assets/danger-icon.png',
        resource: 'lib/assets/baygon-resource.png',
        method: 'lib/assets/baygon-type.png',
    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    Item matchedItem = items.firstWhere(
          (item) => item.id == scannedBarcode,
      orElse: () => Item(
        id: '',
        image: 'lib/assets/recycle-icon.png',
        name: '',
        type: '',
        category: '',
        resource: '',
        method: '',
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
          leading: const Icon(Icons.close),
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
              Tab(text: 'บาร์โค้ด'),
              Tab(text: 'รหัสบาร์โค้ด'),
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
                  bottom: 20,
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
                              matchedItem.category,
                            ),
                          ),
                          title: Text(
                            matchedItem.name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
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
                        style: const TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          labelText: "กรอกรหัสบาร์โค้ด 13 หลัก/ชื่อสินค้า",
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
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
                                            child: AspectRatio(
                                              aspectRatio: 1 / 1,
                                                child: Image.asset(item.image)
                                            ),
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
                                            ),
                                          ),
                                          Text(
                                            item.name,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
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
