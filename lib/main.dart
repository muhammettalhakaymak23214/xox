import 'package:flutter/material.dart';
import 'package:xox/screens/main_screen.dart';
import 'package:xox/screens/xoxGameScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XOX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
      //home: const xoxGameScreen(),
    );
  }
}
