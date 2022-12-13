import 'package:flutter/material.dart';
import 'package:zent/screens/selectInstitute.dart';
import 'dart:async';
import 'loginSplace.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  Future<String?> getAccessToken() async {
    const storage = FlutterSecureStorage();

    String? value = await storage.read(key: "token");
    return value;
  }

  // acessToken() async {
  //   tokenAvailable = await getAccessToken();
  // }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // Timer(
    //   const Duration(seconds: 3),
    //   () => Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => const LoginSplace(),
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(builder: (ctx, snapshot) {
        // Checking if future is resolved
        if (snapshot.connectionState == ConnectionState.done) {
          // If we got an error
          if (snapshot.hasError) {
            return Center(
              child: Text(
                '${snapshot.error} occurred',
                style: TextStyle(fontSize: 18),
              ),
            );

            // if we got our data
          } else if (snapshot.hasData) {
            // Extracting data from snapshot object
            final data = snapshot.data as String;
            return data != null ? SelectInstitute() : Container();
          }
        }
        return Center(child: CircularProgressIndicator());
      }),
    );
  }
}
