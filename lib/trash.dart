import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';



class TrashPage extends StatefulWidget {
  @override
  _TrashPageState createState() => _TrashPageState();
}

class _TrashPageState extends State<TrashPage> {
  String selectedImage = '';
  String codeProduct = 'CODE PRODUCT';
  String nameProduct = 'NAME PRODUCT';
  String selectedBinImage = '';
  String selectedWasteTypeImage = '';
  String selectedGallery = '';
  String string= '';
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
                print('object');
                // Handle your action here
              },
              child: Image.asset(
                'photo/backk.png',
                width: 40, // Increased width
                height: 98, // Increased height
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
                  'photo/binnyy.png',
                  width: 70,
                  height: 21.3,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 160.0,right: 10),
              child: GestureDetector(
                onTap: () {
                  // Handle your action here
                },
                child: Image.asset(
                  'photo/hard.png',
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
                    'photo/howto.png',
                    width: 196, // Increased width
                    height: 53,
                  ),

                  SizedBox(height: 0),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start, // เปลี่ยนจาก MainAxisAlignment.end เป็น MainAxisAlignment.start
                        children: [
                          SizedBox(width: 51,height: 33,), // Adjust the width as needed for the desired spacing
                        ],
                      ),
                      Positioned(
                        right: 20, // ปรับตำแหน่ง left ให้เลื่อนไปทางด้านซ้าย
                        child: GestureDetector(
                          onTap: () {
                            _handleBackButtonTap(context);
                          },
                          child: Image.asset(
                            'photo/selectnow.png',
                            width: 51,
                            height: 33,
                          ),
                        ),
                      ),
                    ],
                  ),



                  SizedBox(height: 0),
                  GestureDetector(
                    onTap: () {
                      _showImageSelectionDialog(context);
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          alignment: Alignment.center,
                          child: selectedImage.isNotEmpty
                              ? Image.asset(
                            'photo/$selectedImage.png',
                            fit: BoxFit.cover,
                          )
                              : Text(
                            'แยกขยะชิ้นนี้ยังไง',
                            style: TextStyle(
                                fontSize: 14, color: Colors.green),
                          ),
                        ),
                        if (selectedImage.isNotEmpty)
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'photo/$selectedImage.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
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
                        'photo/$selectedBinImage.png',
                        fit: BoxFit.cover,
                      )
                          : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'photo/Vector.png',
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
                            'photo/upload.png',
                            width: 103,
                            height: 96,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      Image.asset(
                        'photo/next.png',
                        width: 40,
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          _showWasteTypeSelectionDialog(context);
                        },
                        child: Image.asset(
                          selectedWasteTypeImage.isNotEmpty
                              ? 'photo/$selectedWasteTypeImage.png'
                              : 'photo/select.png',
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
                        'photo/edittext.png',
                        width: 25,
                        height: 25,
                      ),
                      Expanded(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: TextEditingController(text: string), // กำหนด initialValue ให้ตรงกับค่าของ string
                          decoration: InputDecoration(
                            hintText: 'เขียนคำแนะนำ เช่น ฝาสามารถบริจาคให้ N15 Technology ได้',
                            hintStyle: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _handleBackButtonTap(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            setState(() {
              // Reset state variables
              selectedImage = '';
              codeProduct = 'CODE PRODUCT';
              nameProduct = 'NAME PRODUCT';
              selectedBinImage = '';
              selectedWasteTypeImage = '';
              selectedGallery = '';
              comment = '';
            });
            Navigator.of(context).popUntil((route) => route.isFirst); // รีเซ็ตหน้าจอเหมือนตอนเปิดแอพครั้งแรก
          },
          child: AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'photo/selectcolect.png',
                  width: 257, // Adjust width as needed
                  height: 167, // Adjust height as needed
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 5),
                Text(
                  'กลับไปที่หน้าแรก',
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.underline, // Underline text
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
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


  void _showImageSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("แยกขยะชิ้นไหนดี"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImage = 'testphoto1';
                      codeProduct = '8 850 3600 33321';
                      nameProduct = 'Dettol Multi Surface Disinfectant Spray';
                    });
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'photo/testphoto1.png',
                        width: 135,
                        height: 135,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '2 points',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImage = 'testphoto2';
                      codeProduct = '1 111 6425 20001';
                      nameProduct = 'น้ำมันพืช มรกต';
                    });
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'photo/testphoto2.png',
                        width: 135,
                        height: 135,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '2 points',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImage = 'testphoto3';
                      codeProduct = '4 987 1766 00776';
                      nameProduct = 'Vicks Vaporub';
                    });
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'photo/testphoto3.png',
                        width: 135,
                        height: 135,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '2 points',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 5),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImage = 'testphoto4';
                      codeProduct = '8 850 0922 94700';
                      nameProduct = 'Hygiene Expert care';
                    });
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'photo/testphoto4.png',
                        width: 135,
                        height: 135,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '2 points',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  selectedImage = '';
                  codeProduct = 'CODE PRODUCT';
                  nameProduct = 'NAME PRODUCT';
                  selectedBinImage = '';
                  selectedWasteTypeImage = '';
                  selectedGallery = '';
                  comment ='';
                });
                Navigator.pop(context);
              },
              child: Text("ยกเลิก"),
            ),
          ],
        );
      },
    );
  }

  void _showBinSelectionDialog(BuildContext context) {
    if (selectedImage.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("กรุณาเลือกแยกขยะก่อน"),
            content: Text("โปรดเลือกรูปภาพขยะก่อนจะเลือกถังขยะ"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("ตกลง"),
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
                              ? 'photo/bin1.png'
                              : index == 1
                              ? 'photo/bluebin.png'
                              : index == 2
                              ? 'photo/bin3.png'
                              : 'photo/bin4.png',
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

  void _showWasteTypeSelectionDialog(BuildContext context) {
    // Check if a photo has been selected from the gallery
    if (selectedGallery.isEmpty) {
      // If no photo has been selected, show a dialog to prompt the user to select a photo
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("กรุณาอัพโหลดรูปภาพ"),
            content: Text("โปรดอัพโหลดรูปภาพขยะก่อนจะเลือกประเภทขยะ"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("ตกลง"),
              ),
            ],
          );
        },
      );
    } else {
      // If a photo has been selected, proceed to show the waste type selection dialog
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
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("ยกเลิก"),
              ),
            ],
          );
        },
      );
    }
  }
}



