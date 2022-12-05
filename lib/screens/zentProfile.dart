// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:zent/screens/Common/notification.dart';

class ZentProfile extends StatefulWidget {
  const ZentProfile({super.key});

  @override
  State<ZentProfile> createState() => _ZentProfileState();
}

class _ZentProfileState extends State<ZentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xff2B9A9F),
        title: const Center(
          child: Text(
            "My Profile",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifications()),
                );
              },
              icon: const Icon(Icons.notifications_none_outlined)),
          IconButton(
              onPressed: () {
                ZentProfileBottomSheet(context);
              },
              icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        
        children: [
          Container(
            
            width: 300,
            height: 100,
            color: Colors.amber,
            child: Image.asset(
                  "images/ZentProfile.png",
                  // fit: BoxFit.fitWidth,
                  width: double.infinity
                ),
          )
        ],
      ),
    );
  }
}

void ZentProfileBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Wrap(
          children: <Widget>[
            new ListTile(
                leading: new Icon(Icons.edit_outlined),
                title: new Text('Edit personal Information'),
                onTap: () => {}),
          
          ],
        );
      });
}
