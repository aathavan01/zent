import 'package:flutter/material.dart';
import 'dart:async';
import 'loginSplace.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds:3),
      () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginSplace(),),
              ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center( child:Image.asset("images/Zent.png", height: 130),
    ));
  }
}

