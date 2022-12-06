// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:zent/screens/Common/notification.dart';
import 'package:zent/screens/editProfile.dart';

class ZentProfile extends StatefulWidget {
  const ZentProfile({super.key});

  @override
  State<ZentProfile> createState() => _ZentProfileState();
}

class _ZentProfileState extends State<ZentProfile> {
   final List<Map<String, dynamic>> ProfileInfoList = [
    {
      "name": "AATHAV",
      "images": "images/images/ZentRoundedProfile.png",
      "fullName": "Kovinthamoorthy aathavan",
       "address": "Kanapathyappulam kopay center kopay",
      "contactNumber": "0761903375"
    },
     {
      "name": "AATHAV",
      "images": "images/images/ZentRoundedProfile.png",
      "fullName": "Kovinthamoorthy aathavan",
       "address": "Kanapathyappulam kopay center kopay",
      "contactNumber": "0761903375"
    }
  ];
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
                  title: const Center(
                    child: Text(
                      "My Profile",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
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
              ), // Container
              Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Container(
                  color: Colors.white,
                  height: 120,
                  child: Image.asset("images/ZentProfile.png",
                      // fit: BoxFit.fitWidth,
                      width: double.infinity),
                  margin: EdgeInsets.fromLTRB(45, 0, 45, 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Container(
                  // color: Colors.white,
                  height: 150,
                  width: 120,

                  child: Column(children: [
                    Image.asset("images/ZentRoundedProfile.png",
                        fit: BoxFit.fitWidth, width: double.infinity),
                    Text("AATHAV")
                  ]),

                  margin: EdgeInsets.fromLTRB(40, 60, 45, 16),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                child: Text("Personal Information"),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("data",),)
            ],
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
                onTap: () => {  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditProfile()),
              )}),
          ],
        );
      },);
}

