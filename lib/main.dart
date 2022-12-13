import 'package:flutter/material.dart';
import 'package:zent/screens/login/logo.dart';
import 'package:provider/provider.dart';
import 'package:zent/screens/login/otp.dart';

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
        // ChangeNotifierProvider(create:(_)=>Otp(id: id) );
        const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Logo(),
    );
  }
}
