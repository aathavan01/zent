
import 'package:flutter/material.dart';
import 'package:zent/screens/login/logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  

  @override
  Widget build(BuildContext context) {
    return 
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Logo(),
    );
  }
}

