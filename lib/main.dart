import 'package:flutter/material.dart';
import 'package:resume_builder/screens/home_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.blue.shade800)
      ),
      home: const HomeScreen(),
    );
  }
}