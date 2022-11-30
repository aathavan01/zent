import 'package:flutter/material.dart';
import 'dart:async';
import 'signinPage.dart';

class StartingAnimation extends StatefulWidget {
  const StartingAnimation({super.key});

  @override
  State<StartingAnimation> createState() => _StartingAnimationState();
}

class _StartingAnimationState extends State<StartingAnimation> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInPage(),),
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

