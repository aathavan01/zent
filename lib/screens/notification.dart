import 'package:flutter/material.dart';

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Color(0xff2B9A9F),
        title: Center(
          child: Text(
            "Notification",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
        
      ),);
  }
}