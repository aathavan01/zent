import 'package:flutter/material.dart';
import 'package:zent/screens/login/logo.dart';
import 'package:provider/provider.dart';
import 'package:zent/screens/login/otp.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tokenAvailable = null;
  Future<String?> getAccessToken() async {
    final storage = new FlutterSecureStorage();

// Read value
    String? value = await storage.read(key: "token");
    return value;
  }

  @override
  void initState() {
    getAccessToken();
    tokenAvailable = getAccessToken();
    // TODO: implement initState
    super.initState();
  }

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
