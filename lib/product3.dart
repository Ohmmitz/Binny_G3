import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'Howto1.dart';

class product3 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<product3> {
  String selectedImage = '';
  String codeProduct = '1 111 6425 20001';
  String nameProduct = 'น้ำมันพืช มรกต';
  String selectedBinImage = '';
  String selectedWasteTypeImage = '';
  String selectedGallery = '';
  String string = '';
  String comment = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepoint()),
                );
              },
              child: Image.asset(
                'assets/backk.png',
                width: 40,
                height: 98,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  // Handle your action here
                },
                child: Image.asset(
                  'assets/binnyy.png',
                  width: 70,
                  height: 21.3,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 160.0, right: 10),
              child: GestureDetector(
                onTap: () {
                  // Handle your action here
                },
                child: Image.asset(
                  'assets/hard.png',
                  width: 68,
                  height: 49.0,
                ),
              ),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/howto.png',
                    width: 196,
                    height: 53,
                  ),
                  SizedBox(height: 0),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 51, height: 33,),
                        ],
                      ),
                      Positioned(
                        right: 20,
                        child: GestureDetector(
                          onTap: () {
                            _handleBackButtonTap(context);
                          },
                          child: Image.asset(
                            'assets/selectnow.png',
                            width: 51,
                            height: 33,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        color: Colors.blue.withOpacity(0),
                      ),
                      Positioned.fill(
                        child: Image.asset(
                          'assets/testphoto2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    codeProduct,
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  SizedBox(height: 0),
                  Text(
                    nameProduct,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _showBinSelectionDialog(context);
                    },
                    child: Container(
                      width: 104,
                      height: 97,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: selectedBinImage.isNotEmpty
                          ? Image.asset(
                              'assets/$selectedBinImage.png',
                              fit: BoxFit.cover,
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/Vector.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text(
                                  'เลือกถังขยะ',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.green),
                                ),
                              ],
                            ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      'เลือกขยะ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: _getImageFromGallery,
                        child: Container(
                          width: 103,
                          height: 96,
                          child: selectedGallery.isNotEmpty
                              ? Image.file(
                                  File(selectedGallery),
                                  width: 103,
                                  height: 96,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  'assets/upload.png',
                                  width: 103,
                                  height: 96,
                                ),
                        ),
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      Image.asset(
                        'assets/next.png',
                        width: 40,
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          _showWasteTypeSelectionDialog(context);
                        },
                        child: Image.asset(
                          selectedWasteTypeImage.isNotEmpty
                              ? 'assets/$selectedWasteTypeImage.png'
                              : 'assets/select.png',
                          width: 103,
                          height: 96,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Image.asset(
                        'assets/edittext.png',
                        width: 25,
                        height: 25,
                      ),
                      Expanded(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: TextEditingController(text: string),
                          decoration: InputDecoration(
                            hintText:
                                'เขียนคำแนะนำ เช่น ฝาสามารถบริจาคให้ N15 Technology ได้',
                            hintStyle: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 25),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleBackButtonTap(BuildContext context) {
  if (selectedBinImage.isNotEmpty &&
      selectedWasteTypeImage.isNotEmpty &&
      selectedGallery.isNotEmpty) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/selectcolect.png',
                width: 257, // Adjust width as needed
                height: 167, // Adjust height as needed
                fit: BoxFit.cover,
              ),
            ],
          ),
          actions: <Widget>[
          Center(
            child: TextButton(
              child: Text(
                'กลับไปหน้าแรก',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepoint()),
                );
              },
            ),
          ),
        ],

        );
      },
    );
  } else {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('แจ้งเตือน'),
          content: Text('โปรดใส่ข้อมูลให้ครบถ้วนก่อน'),
          actions: <Widget>[
            TextButton(
              child: Text('ตกลง'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}



  void _getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        selectedGallery = pickedFile.path;
      });
    }
  }

  void _showBinSelectionDialog(BuildContext context) {
    if (selectedImage.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Center(child: Text("เลือกถังขยะ")),
            content: Container(
              width: double.maxFinite,
              height: 100,
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedBinImage = index == 0
                                ? 'bin1'
                                : index == 1
                                    ? 'bluebin'
                                    : index == 2
                                        ? 'bin3'
                                        : 'bin4';
                          });
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          index == 0
                              ? 'assets/bin1.png'
                              : index == 1
                                  ? 'assets/bluebin.png'
                                  : index == 2
                                      ? 'assets/bin3.png'
                                      : 'assets/bin4.png',
                          width: 104,
                          height: 96,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      );
    }
  }

  Widget _buildWasteSelectionWidget() {
    return Column(
      children: [
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            'เลือกขยะ',
            style: TextStyle(fontSize: 20),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _getImageFromGallery,
              child: Container(
                width: 103,
                height: 96,
                child: selectedGallery.isNotEmpty
                    ? Image.file(
                        File(selectedGallery),
                        width: 103,
                        height: 96,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/upload.png',
                        width: 103,
                        height: 96,
                      ),
              ),
            ),
            SizedBox(
              width: 0,
            ),
            Image.asset(
              'assets/next.png',
              width: 40,
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                _showWasteTypeSelectionDialog(context);
              },
              child: Image.asset(
                selectedWasteTypeImage.isNotEmpty
                    ? 'assets/$selectedWasteTypeImage.png'
                    : 'assets/select.png',
                width: 103,
                height: 96,
              ),
            ),
          ],
        ),
        SizedBox(height: 3),
        Row(
          children: [
            Image.asset(
              'assets/edittext.png',
              width: 25,
              height: 25,
            ),
            Expanded(
              child: TextField(
                textAlign: TextAlign.center,
                controller: TextEditingController(text: string),
                decoration: InputDecoration(
                  hintText:
                      'เขียนคำแนะนำ เช่น ฝาสามารถบริจาคให้ N15 Technology ได้',
                  hintStyle: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/twocom.png',
                    width: 25,
                    height: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'เพิ่มชิ้น',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _showWasteTypeSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("เลือกประเภทขยะ"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedWasteTypeImage = 'papet';
                    });
                    Navigator.pop(context);
                  },
                  title: Center(child: Text("ขวดน้ำใส PET")),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedWasteTypeImage = 'papett';
                    });
                    Navigator.pop(context);
                  },
                  title: Center(child: Text("ถุงฟิล์มยืด PE")),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedWasteTypeImage = 'papettt';
                    });
                    Navigator.pop(context);
                  },
                  title: Center(child: Text("พลาสติกแข็ง HDPE")),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedWasteTypeImage = 'papetttt';
                    });
                    Navigator.pop(context);
                  },
                  title: Center(child: Text("ฟิล์มหด PVC")),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedWasteTypeImage = 'papettttt';
                    });
                    Navigator.pop(context);
                  },
                  title: Center(child: Text("พลาสติกยืดหยุ่น LDPE")),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedWasteTypeImage = 'papetttttt';
                    });
                    Navigator.pop(context);
                  },
                  title: Center(child: Text("พลาสติกเหนียว PP")),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedWasteTypeImage = 'papettttttt';
                    });
                    Navigator.pop(context);
                  },
                  title: Center(child: Text("กระป๋องอลูมิเนียม")),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedWasteTypeImage = 'papetttttttt';
                    });
                    Navigator.pop(context);
                  },
                  title: Center(child: Text("กระป๋องเหล็กสังกะสี")),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedWasteTypeImage = 'papettttttttt';
                    });
                    Navigator.pop(context);
                  },
                  title: Center(child: Text("กระดาษเคลือบพลาสติก")),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedWasteTypeImage = 'papetttttttttt';
                    });
                    Navigator.pop(context);
                  },
                  title: Center(child: Text("พลาสติกกรอบ")),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
