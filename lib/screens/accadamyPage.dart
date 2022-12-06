import 'package:flutter/material.dart';
import 'package:zent/screens/Common/notification.dart';

class AccadamyPage extends StatefulWidget {
  const AccadamyPage({super.key});

  @override
  State<AccadamyPage> createState() => _AccadamyPageState();
}

class _AccadamyPageState extends State<AccadamyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: 160,
                child: AppBar(
                  toolbarHeight: 120,
                  backgroundColor: const Color(0xff2B9A9F),
                ),
              ),
              // Container

              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: Container(
                    child: Column(children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/sun.png'),
                        radius: 50,
                        backgroundColor: Colors.white,
                      ),
                      Text("AATHAV")
                    ]),
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
      
    );
  }
}
