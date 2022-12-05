import 'package:flutter/material.dart';



void BottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Wrap(
          children: <Widget>[
            new ListTile(
                leading: new Icon(Icons.person_2_rounded),
                title: new Text('Profile'),
                onTap: () => {}),
            new ListTile(
              leading: new Icon(Icons.bar_chart),
              title: new Text('Progress'),
              onTap: () => {},
            ),
            new ListTile(
              leading: new Icon(Icons.logout_outlined),
              title: new Text('Logout'),
              onTap: () => {},
            ),
          ],
        );
      },);
}
