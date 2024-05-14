import 'package:binny_project_g3/models/barcode_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/barcode_model.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.matchedItem});

  final Item matchedItem;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            width: 70,
            child: Image.asset('assets/arrow-back.png'),
          ),
        ),
        title: Column(
          children: [
            Text(
              widget.matchedItem.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'MyBinnyFont',
              ),
            ),
            Text(
              widget.matchedItem.id,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontFamily: 'MyBinnyFont',
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                  border: Border.all(
                    color: Colors.grey.shade400.withOpacity(0.4),
                    width: 2.0,
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: widget.matchedItem.image.isEmpty
                      ? Image.file(File(widget.matchedItem.image2!.path))
                      : Image.asset(widget.matchedItem.image),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'คู่มือคัดแยกขยะ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          fontFamily: 'MyBinnyFont',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: SizedBox(
                          width: 30,
                          child: Image.asset(
                              widget.matchedItem.category.imagePath),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'แยกได้ 3 ชิ้น',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12.0,
                          fontFamily: 'MyBinnyFont',
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'วิธีคัดแยกขยะจากผู้ใช้งานอื่น',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 12.0,
                              color: Color.fromRGBO(2, 194, 117, 1),
                              fontFamily: 'MyBinnyFont',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(7, 2, 0, 0),
                            child: SizedBox(
                              width: 10,
                              child: Image.asset('assets/next-arrow.png'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                      border: Border.all(
                        color: Colors.grey.shade400.withOpacity(0.4),
                        width: 3.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: GestureDetector(
                                    onTap: () async {
                                      final pickedImage = await ImagePicker()
                                          .pickImage(source: ImageSource.camera);
                                      if (pickedImage != null) {
                                        setState(() {
                                          widget.matchedItem.resource =
                                              File(pickedImage.path);
                                        });
                                      }
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        child: widget.matchedItem.resource != null
                                            ? AspectRatio(
                                                aspectRatio: 1 / 1,
                                                child: Image.file(
                                                  widget.matchedItem.resource!,
                                                  fit: BoxFit.contain,
                                                ),
                                              )
                                            : const Icon(
                                                Icons.add_circle_rounded,
                                                size: 50,
                                              ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset('assets/chevrons-right.png'),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(24.0),
                                  child: Image.asset(
                                    widget.matchedItem.method.imagePath,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(228, 226, 226, 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24.0),
                          bottomRight: Radius.circular(24.0),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'คำแนะนำ: สามารถแยกขยะไปขายกับร้านที่รับซื้อ',
                          style: TextStyle(
                            color: Color.fromRGBO(110, 110, 110, 1),
                            fontFamily: 'MyBinnyFont',
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        'ความคิดเห็น',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'MyBinnyFont',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(100)),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'สมชาย สายเสมอ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'MyBinnyFont',
                            ),
                          ),
                          Text(
                              'ต้องบีบขวดก่อนทิ้งไหมครับ?',
                            style: TextStyle(
                              fontFamily: 'MyBinnyFont',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 120.0),
                    child: Row(
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'สมหญิง สายเสมอ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MyBinnyFont',
                              ),
                            ),
                            Text(
                                'ฉลากต้องฉีกออกตลอดไหมคะ?',
                              style: TextStyle(
                                fontFamily: 'MyBinnyFont',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
