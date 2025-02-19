import 'package:flutter/material.dart';
import 'package:go_moon/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GoMoon",
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
