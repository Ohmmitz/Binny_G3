import 'package:binny_project_g3/SearchPage.dart';
import 'package:binny_project_g3/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:binny_project_g3/soldtash.dart';



class Soldsold extends StatelessWidget {
  const Soldsold({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldApp();
  }
}

class ScaffoldApp extends StatelessWidget {
  const ScaffoldApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homescreen()),
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/Group.png'),
            SizedBox(
              width: 63,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      width: 30,
                      height: 31,
                      child: const Icon(Icons.favorite_border, size: 24),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.5),
                      child: Container(
                        width: 25,
                        height: 24,
                        child: const Icon(Icons.search, size: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Soldtash(),
              Stack(
              ),
            ],
          ),
        ),
      ),
    );
  }
}
