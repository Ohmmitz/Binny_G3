import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'Reward.dart'; // Assuming RewardPage is defined in Reward.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/reward': (context) => RewardPage(),
      },
    );
  }
}
